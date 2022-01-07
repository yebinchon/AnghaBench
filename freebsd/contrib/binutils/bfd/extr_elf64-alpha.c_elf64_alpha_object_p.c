
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int bfd_arch_alpha ;
 int bfd_default_set_arch_mach (int *,int ,int ) ;

__attribute__((used)) static bfd_boolean
elf64_alpha_object_p (bfd *abfd)
{

  return bfd_default_set_arch_mach (abfd, bfd_arch_alpha, 0);
}
