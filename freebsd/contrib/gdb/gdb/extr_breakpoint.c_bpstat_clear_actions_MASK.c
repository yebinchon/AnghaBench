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
typedef  TYPE_1__* bpstat ;
struct TYPE_3__ {int /*<<< orphan*/ * old_val; int /*<<< orphan*/  commands; struct TYPE_3__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2 (bpstat bs)
{
  for (; bs != NULL; bs = bs->next)
    {
      FUNC0 (&bs->commands);
      if (bs->old_val != NULL)
	{
	  FUNC1 (bs->old_val);
	  bs->old_val = NULL;
	}
    }
}