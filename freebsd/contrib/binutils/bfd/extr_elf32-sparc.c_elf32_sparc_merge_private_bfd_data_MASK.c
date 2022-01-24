#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bfd_boolean ;
struct TYPE_12__ {int flags; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_13__ {unsigned long e_flags; } ;

/* Variables and functions */
 int DYNAMIC ; 
 unsigned long EF_SPARC_LEDATA ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  bfd_arch_sparc ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 unsigned long FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 TYPE_4__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static bfd_boolean
FUNC10 (bfd *ibfd, bfd *obfd)
{
  bfd_boolean error;
  unsigned long ibfd_mach;
  /* FIXME: This should not be static.  */
  static unsigned long previous_ibfd_e_flags = (unsigned long) -1;

  if (FUNC2 (ibfd) != bfd_target_elf_flavour
      || FUNC2 (obfd) != bfd_target_elf_flavour)
    return TRUE;

  error = FALSE;

  ibfd_mach = FUNC3 (ibfd);
  if (FUNC4 (ibfd_mach))
    {
      error = TRUE;
      FUNC1)
	(FUNC0("%B: compiled for a 64 bit system and target is 32 bit"), ibfd);
    }
  else if ((ibfd->flags & DYNAMIC) == 0)
    {
      if (FUNC3 (obfd) < ibfd_mach)
	FUNC5 (obfd, bfd_arch_sparc, ibfd_mach);
    }

  if (((FUNC7 (ibfd)->e_flags & EF_SPARC_LEDATA)
       != previous_ibfd_e_flags)
      && previous_ibfd_e_flags != (unsigned long) -1)
    {
      FUNC1)
	(FUNC0("%B: linking little endian files with big endian files"), ibfd);
      error = TRUE;
    }
  previous_ibfd_e_flags = FUNC7 (ibfd)->e_flags & EF_SPARC_LEDATA;

  if (error)
    {
      FUNC6 (bfd_error_bad_value);
      return FALSE;
    }

  return TRUE;
}