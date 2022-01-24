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
struct main_entry {int /*<<< orphan*/ * completers; struct main_entry* next; } ;
struct TYPE_2__ {int num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct main_entry*,int /*<<< orphan*/ *) ; 
 TYPE_1__** glist ; 
 int glistlen ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 struct main_entry* maintable ; 

__attribute__((used)) static void
FUNC3 (void)
{
  struct main_entry *ptr;
  int x;

  for (ptr = maintable; ptr != NULL; ptr = ptr->next)
    {
      if (ptr->completers == NULL)
	FUNC0 ();

      FUNC1 (ptr, ptr->completers);
      ptr->completers = FUNC2 (ptr->completers);
    }

  /* The table has been finalized, now number the indexes.  */
  for (x = 0; x < glistlen; x++)
    glist[x]->num = x;
}