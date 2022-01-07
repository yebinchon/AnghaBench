
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sh_flags; scalar_t__ sh_type; scalar_t__ sh_size; } ;
typedef TYPE_1__ GElf_Shdr ;


 int SHF_ALLOC ;
 int SHF_EXECINSTR ;
 int SHF_WRITE ;
 scalar_t__ SHT_NOBITS ;
 int bss_size ;
 int data_size ;
 int text_size ;

__attribute__((used)) static void
berkeley_calc(GElf_Shdr *shdr)
{
 if (shdr != ((void*)0)) {
  if (!(shdr->sh_flags & SHF_ALLOC))
   return;
  if ((shdr->sh_flags & SHF_ALLOC) &&
      ((shdr->sh_flags & SHF_EXECINSTR) ||
      !(shdr->sh_flags & SHF_WRITE)))
   text_size += shdr->sh_size;
  else if ((shdr->sh_flags & SHF_ALLOC) &&
      (shdr->sh_flags & SHF_WRITE) &&
      (shdr->sh_type != SHT_NOBITS))
   data_size += shdr->sh_size;
  else
   bss_size += shdr->sh_size;
 }
}
