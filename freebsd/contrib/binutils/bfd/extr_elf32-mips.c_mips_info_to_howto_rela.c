
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int arelent ;
typedef int Elf_Internal_Rela ;


 int mips_info_to_howto_rel (int *,int *,int *) ;

__attribute__((used)) static void
mips_info_to_howto_rela (bfd *abfd, arelent *cache_ptr, Elf_Internal_Rela *dst)
{
  mips_info_to_howto_rel (abfd, cache_ptr, dst);



}
