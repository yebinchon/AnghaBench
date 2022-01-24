#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bpstat ;
struct TYPE_4__ {int /*<<< orphan*/  commands; int /*<<< orphan*/ * old_val; struct TYPE_4__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3 (bpstat *bsp)
{
  bpstat p;
  bpstat q;

  if (bsp == 0)
    return;
  p = *bsp;
  while (p != NULL)
    {
      q = p->next;
      if (p->old_val != NULL)
	FUNC1 (p->old_val);
      FUNC0 (&p->commands);
      FUNC2 (p);
      p = q;
    }
  *bsp = NULL;
}