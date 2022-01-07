
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_set_arch_mach (int ,int ,int ) ;
 int ldfile_output_architecture ;
 int ldfile_output_machine ;
 int output_bfd ;

void
set_output_arch_default (void)
{

  bfd_set_arch_mach (output_bfd,
       ldfile_output_architecture, ldfile_output_machine);
}
