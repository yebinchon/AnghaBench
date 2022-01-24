#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int sign_extend_vma; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int
FUNC6 (bfd *abfd)
{
  char *name;

  if (FUNC1 (abfd) == bfd_target_elf_flavour)
    return FUNC4 (abfd)->sign_extend_vma;

  name = FUNC2 (abfd);

  /* Return a proper value for DJGPP & PE COFF.
     This function is required for DWARF2 support, but there is
     no place to store this information in the COFF back end.
     Should enough other COFF targets add support for DWARF2,
     a place will have to be found.  Until then, this hack will do.  */
  if (FUNC0 (name, "coff-go32")
      || FUNC5 (name, "pe-i386") == 0
      || FUNC5 (name, "pei-i386") == 0
      || FUNC5 (name, "pe-arm-wince-little") == 0
      || FUNC5 (name, "pei-arm-wince-little") == 0)
    return 1;

  FUNC3 (bfd_error_wrong_format);
  return -1;
}