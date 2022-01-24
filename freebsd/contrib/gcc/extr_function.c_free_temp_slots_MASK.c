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
struct temp_slot {int /*<<< orphan*/  keep; struct temp_slot* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct temp_slot*) ; 
 int /*<<< orphan*/  temp_slot_level ; 
 struct temp_slot** FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3 (void)
{
  struct temp_slot *p, *next;

  for (p = *FUNC2 (temp_slot_level); p; p = next)
    {
      next = p->next;

      if (!p->keep)
	FUNC1 (p);
    }

  FUNC0 ();
}