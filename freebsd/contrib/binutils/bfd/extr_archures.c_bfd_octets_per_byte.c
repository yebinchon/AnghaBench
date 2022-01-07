
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 unsigned int bfd_arch_mach_octets_per_byte (int ,int ) ;
 int bfd_get_arch (int *) ;
 int bfd_get_mach (int *) ;

unsigned int
bfd_octets_per_byte (bfd *abfd)
{
  return bfd_arch_mach_octets_per_byte (bfd_get_arch (abfd),
     bfd_get_mach (abfd));
}
