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
typedef  scalar_t__ bfd_boolean ;
struct TYPE_2__ {int relax_trip; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__) ; 
 TYPE_1__ link_info ; 

__attribute__((used)) static void
FUNC3 (void)
{
  /* Keep relaxing until bfd_relax_section gives up.  */
  bfd_boolean relax_again;

  link_info.relax_trip = -1;
  do
    {
      relax_again = FALSE;
      link_info.relax_trip++;

      /* Note: pe-dll.c does something like this also.  If you find
	 you need to change this code, you probably need to change
	 pe-dll.c also.  DJ  */

      /* Do all the assignments with our current guesses as to
	 section sizes.  */
      FUNC0 ();

      /* We must do this after lang_do_assignments, because it uses
	 size.  */
      FUNC1 ();

      /* Perform another relax pass - this time we know where the
	 globals are, so can make a better guess.  */
      FUNC2 (&relax_again, FALSE);
    }
  while (relax_again);
}