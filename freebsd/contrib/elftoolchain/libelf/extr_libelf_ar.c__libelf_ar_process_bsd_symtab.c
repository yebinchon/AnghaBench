
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* off_t ;
struct TYPE_9__ {int e_rawsymtabsz; size_t e_symtabsz; TYPE_3__* e_symtab; scalar_t__ e_rawsymtab; } ;
struct TYPE_10__ {TYPE_1__ e_ar; } ;
struct TYPE_12__ {size_t e_rawsize; TYPE_2__ e_u; } ;
struct TYPE_11__ {unsigned long as_hash; char* as_name; void* as_off; } ;
typedef TYPE_3__ Elf_Arsym ;
typedef TYPE_4__ Elf ;


 int ARCHIVE ;
 int GET_LONG (unsigned char*,long) ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int RESOURCE ;
 int assert (int ) ;
 unsigned long elf_hash (char*) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (int) ;

Elf_Arsym *
_libelf_ar_process_bsd_symtab(Elf *e, size_t *count)
{
 Elf_Arsym *symtab, *sym;
 unsigned int n, nentries;
 unsigned char *end, *p, *p0, *s, *s0;
 const size_t entrysize = 2 * sizeof(long);
 long arraysize, fileoffset, stroffset, strtabsize;

 assert(e != ((void*)0));
 assert(count != ((void*)0));
 assert(e->e_u.e_ar.e_symtab == ((void*)0));

 symtab = ((void*)0);





 if (e->e_u.e_ar.e_rawsymtabsz < 2 * sizeof(long))
  goto symtaberror;

 p = p0 = (unsigned char *) e->e_u.e_ar.e_rawsymtab;
 end = p0 + e->e_u.e_ar.e_rawsymtabsz;





 GET_LONG(p, arraysize);

 if (arraysize < 0 || p0 + arraysize >= end ||
     ((size_t) arraysize % entrysize != 0))
  goto symtaberror;




 s = p + arraysize;
 GET_LONG(s, strtabsize);

 s0 = s;
 if (strtabsize < 0 || s0 + strtabsize > end)
  goto symtaberror;

 nentries = (size_t) arraysize / entrysize;




 if ((symtab = malloc(sizeof(Elf_Arsym) * (nentries + 1))) == ((void*)0)) {
  LIBELF_SET_ERROR(RESOURCE, 0);
  return (((void*)0));
 }


 for (n = 0, sym = symtab; n < nentries; n++, sym++) {
  GET_LONG(p, stroffset);
  GET_LONG(p, fileoffset);

  if (stroffset < 0 || fileoffset < 0 ||
      (size_t) fileoffset >= e->e_rawsize)
   goto symtaberror;

  s = s0 + stroffset;

  if (s >= end)
   goto symtaberror;

  sym->as_off = (off_t) fileoffset;
  sym->as_hash = elf_hash((char *) s);
  sym->as_name = (char *) s;
 }


 sym->as_name = ((void*)0);
 sym->as_hash = ~0UL;
 sym->as_off = (off_t) 0;


 e->e_u.e_ar.e_symtab = symtab;

 *count = e->e_u.e_ar.e_symtabsz = nentries + 1;

 return (symtab);

symtaberror:
 if (symtab)
  free(symtab);
 LIBELF_SET_ERROR(ARCHIVE, 0);
 return (((void*)0));
}
