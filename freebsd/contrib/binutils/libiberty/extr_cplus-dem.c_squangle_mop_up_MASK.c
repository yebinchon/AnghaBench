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
struct work_stuff {int /*<<< orphan*/ * ktypevec; int /*<<< orphan*/ * btypevec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct work_stuff*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2 (struct work_stuff *work)
{
  /* clean up the B and K type mangling types. */
  FUNC0 (work);
  if (work -> btypevec != NULL)
    {
      FUNC1 ((char *) work -> btypevec);
    }
  if (work -> ktypevec != NULL)
    {
      FUNC1 ((char *) work -> ktypevec);
    }
}