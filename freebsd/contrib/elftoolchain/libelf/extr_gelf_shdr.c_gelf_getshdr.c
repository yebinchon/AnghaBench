
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ sh_entsize; scalar_t__ sh_addralign; int sh_info; int sh_link; scalar_t__ sh_size; scalar_t__ sh_offset; scalar_t__ sh_addr; scalar_t__ sh_flags; int sh_type; int sh_name; } ;
struct TYPE_12__ {TYPE_1__* s_elf; } ;
struct TYPE_11__ {void* sh_entsize; void* sh_addralign; int sh_info; int sh_link; void* sh_size; scalar_t__ sh_offset; scalar_t__ sh_addr; void* sh_flags; int sh_type; int sh_name; } ;
struct TYPE_10__ {int e_class; } ;
typedef TYPE_2__ GElf_Shdr ;
typedef TYPE_3__ Elf_Scn ;
typedef void* Elf64_Xword ;
typedef TYPE_2__ Elf64_Shdr ;
typedef scalar_t__ Elf64_Off ;
typedef scalar_t__ Elf64_Addr ;
typedef TYPE_5__ Elf32_Shdr ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 int ELFCLASSNONE ;
 int LIBELF_SET_ERROR (int ,int ) ;
 void* _libelf_getshdr (TYPE_3__*,int ) ;
 int assert (int) ;

GElf_Shdr *
gelf_getshdr(Elf_Scn *s, GElf_Shdr *d)
{
 int ec;
 void *sh;
 Elf32_Shdr *sh32;
 Elf64_Shdr *sh64;

 if (d == ((void*)0)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 if ((sh = _libelf_getshdr(s, ELFCLASSNONE)) == ((void*)0))
  return (((void*)0));

 ec = s->s_elf->e_class;
 assert(ec == ELFCLASS32 || ec == ELFCLASS64);

 if (ec == ELFCLASS32) {
  sh32 = (Elf32_Shdr *) sh;

  d->sh_name = sh32->sh_name;
  d->sh_type = sh32->sh_type;
  d->sh_flags = (Elf64_Xword) sh32->sh_flags;
  d->sh_addr = (Elf64_Addr) sh32->sh_addr;
  d->sh_offset = (Elf64_Off) sh32->sh_offset;
  d->sh_size = (Elf64_Xword) sh32->sh_size;
  d->sh_link = sh32->sh_link;
  d->sh_info = sh32->sh_info;
  d->sh_addralign = (Elf64_Xword) sh32->sh_addralign;
  d->sh_entsize = (Elf64_Xword) sh32->sh_entsize;
 } else {
  sh64 = (Elf64_Shdr *) sh;
  *d = *sh64;
 }

 return (d);
}
