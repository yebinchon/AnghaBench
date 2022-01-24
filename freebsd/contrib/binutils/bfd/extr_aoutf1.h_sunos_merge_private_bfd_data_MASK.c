#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bfd_arch_sparc ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ bfd_target_aout_flavour ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *ibfd, bfd *obfd)
{
  if (FUNC1 (ibfd) != bfd_target_aout_flavour
      || FUNC1 (obfd) != bfd_target_aout_flavour)
    return TRUE;

  if (FUNC0 (obfd) == bfd_arch_sparc)
    {
      if (FUNC2 (obfd) < FUNC2 (ibfd))
	FUNC3 (obfd, bfd_arch_sparc, FUNC2 (ibfd));
    }

  return TRUE;
}