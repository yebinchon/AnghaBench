#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
struct TYPE_3__ {int arch; int /*<<< orphan*/  printable_name; int /*<<< orphan*/  mach; } ;
typedef  TYPE_1__ bfd_arch_info_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int bfd_arch_unknown ; 
 TYPE_1__* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int ldfile_output_architecture ; 
 int /*<<< orphan*/  ldfile_output_machine ; 
 int /*<<< orphan*/  ldfile_output_machine_name ; 

void
FUNC3 (const char *string, enum bfd_architecture defarch)
{
  const bfd_arch_info_type *arch = FUNC1 (string);

  if (arch)
    {
      ldfile_output_architecture = arch->arch;
      ldfile_output_machine = arch->mach;
      ldfile_output_machine_name = arch->printable_name;
    }
  else if (defarch != bfd_arch_unknown)
    ldfile_output_architecture = defarch;
  else
    FUNC2 (FUNC0("%P%F: cannot represent machine `%s'\n"), string);
}