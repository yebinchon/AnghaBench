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
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int e_flags; scalar_t__ e_machine; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int EF_SPARC_32PLUS ; 
 int EF_SPARC_LEDATA ; 
 int EF_SPARC_SUN_US1 ; 
 int EF_SPARC_SUN_US3 ; 
 scalar_t__ EM_SPARC32PLUS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  bfd_arch_sparc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long bfd_mach_sparc ; 
 unsigned long bfd_mach_sparc_sparclite_le ; 
 unsigned long bfd_mach_sparc_v8plus ; 
 unsigned long bfd_mach_sparc_v8plusa ; 
 unsigned long bfd_mach_sparc_v8plusb ; 
 unsigned long bfd_mach_sparc_v9 ; 
 unsigned long bfd_mach_sparc_v9a ; 
 unsigned long bfd_mach_sparc_v9b ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC3 (bfd *abfd)
{
  if (FUNC0 (abfd))
    {
      unsigned long mach = bfd_mach_sparc_v9;

      if (FUNC2 (abfd)->e_flags & EF_SPARC_SUN_US3)
	mach = bfd_mach_sparc_v9b;
      else if (FUNC2 (abfd)->e_flags & EF_SPARC_SUN_US1)
	mach = bfd_mach_sparc_v9a;
      return FUNC1 (abfd, bfd_arch_sparc, mach);
    }
  else
    {
      if (FUNC2 (abfd)->e_machine == EM_SPARC32PLUS)
	{
	  if (FUNC2 (abfd)->e_flags & EF_SPARC_SUN_US3)
	    return FUNC1 (abfd, bfd_arch_sparc,
					      bfd_mach_sparc_v8plusb);
	  else if (FUNC2 (abfd)->e_flags & EF_SPARC_SUN_US1)
	    return FUNC1 (abfd, bfd_arch_sparc,
					      bfd_mach_sparc_v8plusa);
	  else if (FUNC2 (abfd)->e_flags & EF_SPARC_32PLUS)
	    return FUNC1 (abfd, bfd_arch_sparc,
					      bfd_mach_sparc_v8plus);
	  else
	    return FALSE;
	}
      else if (FUNC2 (abfd)->e_flags & EF_SPARC_LEDATA)
	return FUNC1 (abfd, bfd_arch_sparc,
					  bfd_mach_sparc_sparclite_le);
      else
	return FUNC1 (abfd, bfd_arch_sparc, bfd_mach_sparc);
    }
}