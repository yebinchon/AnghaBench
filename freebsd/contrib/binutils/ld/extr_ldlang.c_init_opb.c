
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 unsigned int bfd_arch_mach_octets_per_byte (int ,int ) ;
 int ldfile_output_architecture ;
 int ldfile_output_machine ;
 scalar_t__ opb_shift ;

__attribute__((used)) static void
init_opb (void)
{
  unsigned x = bfd_arch_mach_octets_per_byte (ldfile_output_architecture,
           ldfile_output_machine);
  opb_shift = 0;
  if (x > 1)
    while ((x & 1) == 0)
      {
 x >>= 1;
 ++opb_shift;
      }
  ASSERT (x == 1);
}
