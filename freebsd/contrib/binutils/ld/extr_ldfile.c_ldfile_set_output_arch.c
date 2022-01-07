
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
struct TYPE_3__ {int arch; int printable_name; int mach; } ;
typedef TYPE_1__ bfd_arch_info_type ;


 int _ (char*) ;
 int bfd_arch_unknown ;
 TYPE_1__* bfd_scan_arch (char const*) ;
 int einfo (int ,char const*) ;
 int ldfile_output_architecture ;
 int ldfile_output_machine ;
 int ldfile_output_machine_name ;

void
ldfile_set_output_arch (const char *string, enum bfd_architecture defarch)
{
  const bfd_arch_info_type *arch = bfd_scan_arch (string);

  if (arch)
    {
      ldfile_output_architecture = arch->arch;
      ldfile_output_machine = arch->mach;
      ldfile_output_machine_name = arch->printable_name;
    }
  else if (defarch != bfd_arch_unknown)
    ldfile_output_architecture = defarch;
  else
    einfo (_("%P%F: cannot represent machine `%s'\n"), string);
}
