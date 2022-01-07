
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef void* off_t ;
struct TYPE_9__ {size_t e_rawsymtabsz; size_t e_symtabsz; TYPE_3__* e_symtab; scalar_t__ e_rawsymtab; } ;
struct TYPE_10__ {TYPE_1__ e_ar; } ;
struct TYPE_12__ {size_t e_rawsize; TYPE_2__ e_u; } ;
struct TYPE_11__ {unsigned long as_hash; char* as_name; void* as_off; } ;
typedef TYPE_3__ Elf_Arsym ;
typedef TYPE_4__ Elf ;


 int ARCHIVE ;
 int GET_WORD (unsigned char*,size_t) ;
 size_t INTSZ ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int RESOURCE ;
 int assert (int ) ;
 unsigned long elf_hash (char*) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (int) ;

Elf_Arsym *
_libelf_ar_process_svr4_symtab(Elf *e, size_t *count)
{
 uint32_t off;
 size_t n, nentries;
 Elf_Arsym *symtab, *sym;
 unsigned char *p, *s, *end;

 assert(e != ((void*)0));
 assert(count != ((void*)0));
 assert(e->e_u.e_ar.e_symtab == ((void*)0));

 symtab = ((void*)0);

 if (e->e_u.e_ar.e_rawsymtabsz < INTSZ)
  goto symtaberror;

 p = (unsigned char *) e->e_u.e_ar.e_rawsymtab;
 end = p + e->e_u.e_ar.e_rawsymtabsz;

 GET_WORD(p, nentries);
 p += INTSZ;

 if (nentries == 0 || p + nentries * INTSZ >= end)
  goto symtaberror;


 if ((symtab = malloc(sizeof(Elf_Arsym) * (nentries+1))) == ((void*)0)) {
  LIBELF_SET_ERROR(RESOURCE, 0);
  return (((void*)0));
 }

 s = p + (nentries * INTSZ);

 for (n = nentries, sym = symtab; n > 0; n--) {
  if (s >= end)
   goto symtaberror;

  GET_WORD(p, off);
  if (off >= e->e_rawsize)
   goto symtaberror;

  sym->as_off = (off_t) off;
  sym->as_hash = elf_hash((char *) s);
  sym->as_name = (char *) s;

  p += INTSZ;
  sym++;

  for (; s < end && *s++ != '\0';)
   ;
 }


 sym->as_name = ((void*)0);
 sym->as_hash = ~0UL;
 sym->as_off = (off_t) 0;

 *count = e->e_u.e_ar.e_symtabsz = nentries + 1;
 e->e_u.e_ar.e_symtab = symtab;

 return (symtab);

symtaberror:
 if (symtab)
  free(symtab);
 LIBELF_SET_ERROR(ARCHIVE, 0);
 return (((void*)0));
}
