
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int TRUE ;
 int bfd_arch_i386 ;
 int bfd_default_set_arch_mach (int *,int ,int ) ;
 int bfd_mach_x86_64 ;

__attribute__((used)) static bfd_boolean
elf64_x86_64_elf_object_p (bfd *abfd)
{

  bfd_default_set_arch_mach (abfd, bfd_arch_i386, bfd_mach_x86_64);
  return TRUE;
}
