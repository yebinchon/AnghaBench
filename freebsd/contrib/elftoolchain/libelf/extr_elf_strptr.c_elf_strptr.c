
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_11__ {scalar_t__ e_kind; int e_flags; } ;
struct TYPE_10__ {size_t d_size; scalar_t__ d_type; size_t d_off; size_t d_align; int * d_buf; } ;
struct TYPE_9__ {scalar_t__ sh_type; size_t sh_size; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef int Elf_Scn ;
typedef TYPE_2__ Elf_Data ;
typedef TYPE_3__ Elf ;


 int ARGUMENT ;
 int DATA ;
 int ELF_F_LAYOUT ;
 scalar_t__ ELF_K_ELF ;
 scalar_t__ ELF_T_BYTE ;
 int LIBELF_SET_ERROR (int ,int ) ;
 scalar_t__ SHT_STRTAB ;
 TYPE_2__* elf_getdata (int *,TYPE_2__*) ;
 int * elf_getscn (TYPE_3__*,size_t) ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 size_t roundup2 (size_t,size_t) ;

char *
elf_strptr(Elf *e, size_t scndx, size_t offset)
{
 Elf_Scn *s;
 Elf_Data *d;
 GElf_Shdr shdr;
 uint64_t alignment, count;

 if (e == ((void*)0) || e->e_kind != ELF_K_ELF) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 if ((s = elf_getscn(e, scndx)) == ((void*)0) ||
     gelf_getshdr(s, &shdr) == ((void*)0))
  return (((void*)0));

 if (shdr.sh_type != SHT_STRTAB ||
     offset >= shdr.sh_size) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 d = ((void*)0);
 if (e->e_flags & ELF_F_LAYOUT) {







  while ((d = elf_getdata(s, d)) != ((void*)0)) {

   if (d->d_buf == 0 || d->d_size == 0)
    continue;

   if (d->d_type != ELF_T_BYTE) {
    LIBELF_SET_ERROR(DATA, 0);
    return (((void*)0));
   }

   if (offset >= d->d_off &&
       offset < d->d_off + d->d_size)
    return ((char *) d->d_buf + offset - d->d_off);
  }
 } else {






  count = (uint64_t) 0;
  while ((d = elf_getdata(s, d)) != ((void*)0) && count <= offset) {

   if (d->d_buf == ((void*)0) || d->d_size == 0)
    continue;

   if (d->d_type != ELF_T_BYTE) {
    LIBELF_SET_ERROR(DATA, 0);
    return (((void*)0));
   }

   if ((alignment = d->d_align) > 1) {
    if ((alignment & (alignment - 1)) != 0) {
     LIBELF_SET_ERROR(DATA, 0);
     return (((void*)0));
    }
    count = roundup2(count, alignment);
   }

   if (offset < count) {

    LIBELF_SET_ERROR(ARGUMENT, 0);
    return (((void*)0));
   }

   if (offset < count + d->d_size) {
    if (d->d_buf != ((void*)0))
     return ((char *) d->d_buf +
         offset - count);
    LIBELF_SET_ERROR(DATA, 0);
    return (((void*)0));
   }

   count += d->d_size;
  }
 }

 LIBELF_SET_ERROR(ARGUMENT, 0);
 return (((void*)0));
}
