
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e_machine; } ;
typedef int FILE ;






 int do_arch ;
 TYPE_1__ elf_header ;
 int process_arm_specific (int *) ;
 int process_mips_specific (int *) ;
 int process_power_specific (int *) ;

__attribute__((used)) static int
process_arch_specific (FILE *file)
{
  if (! do_arch)
    return 1;

  switch (elf_header.e_machine)
    {
    case 131:
      return process_arm_specific (file);
    case 130:
    case 129:
      return process_mips_specific (file);
      break;
    case 128:
      return process_power_specific (file);
      break;
    default:
      break;
    }
  return 1;
}
