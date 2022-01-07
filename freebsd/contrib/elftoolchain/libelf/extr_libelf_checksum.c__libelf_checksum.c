
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {size_t e_nscn; } ;
struct TYPE_13__ {TYPE_1__ e_elf; } ;
struct TYPE_16__ {int e_class; TYPE_2__ e_u; } ;
struct TYPE_15__ {scalar_t__ d_size; scalar_t__ d_buf; } ;
struct TYPE_14__ {int sh_flags; scalar_t__ sh_type; } ;
typedef TYPE_3__ GElf_Shdr ;
typedef int GElf_Ehdr ;
typedef int Elf_Scn ;
typedef TYPE_4__ Elf_Data ;
typedef TYPE_5__ Elf ;


 int ARGUMENT ;
 int CLASS ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int SHF_ALLOC ;
 scalar_t__ SHT_DYNAMIC ;
 scalar_t__ SHT_DYNSYM ;
 unsigned long _libelf_sum (unsigned long,unsigned char*,size_t) ;
 int * elf_getscn (TYPE_5__*,size_t) ;
 TYPE_4__* elf_rawdata (int *,TYPE_4__*) ;
 int * gelf_getehdr (TYPE_5__*,int *) ;
 int * gelf_getshdr (int *,TYPE_3__*) ;

long
_libelf_checksum(Elf *e, int elfclass)
{
 size_t shn;
 Elf_Scn *scn;
 Elf_Data *d;
 unsigned long checksum;
 GElf_Ehdr eh;
 GElf_Shdr shdr;

 if (e == ((void*)0)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0L);
 }

 if (e->e_class != elfclass) {
  LIBELF_SET_ERROR(CLASS, 0);
  return (0L);
 }

 if (gelf_getehdr(e, &eh) == ((void*)0))
  return (0);
 checksum = 0;
 for (shn = 1; shn < e->e_u.e_elf.e_nscn; shn++) {
  if ((scn = elf_getscn(e, shn)) == ((void*)0))
   return (0);
  if (gelf_getshdr(scn, &shdr) == ((void*)0))
   return (0);
  if ((shdr.sh_flags & SHF_ALLOC) == 0 ||
      shdr.sh_type == SHT_DYNAMIC ||
      shdr.sh_type == SHT_DYNSYM)
   continue;

  d = ((void*)0);
  while ((d = elf_rawdata(scn, d)) != ((void*)0))
   checksum = _libelf_sum(checksum,
       (unsigned char *) d->d_buf, (size_t) d->d_size);
 }




 return (long) (((checksum >> 16) & 0xFFFFUL) + (checksum & 0xFFFFUL));
}
