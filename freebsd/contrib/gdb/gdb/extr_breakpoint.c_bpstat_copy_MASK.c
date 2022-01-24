#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bpstat ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/ * old_val; int /*<<< orphan*/ * commands; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

bpstat
FUNC4 (bpstat bs)
{
  bpstat p = NULL;
  bpstat tmp;
  bpstat retval = NULL;

  if (bs == NULL)
    return bs;

  for (; bs != NULL; bs = bs->next)
    {
      tmp = (bpstat) FUNC3 (sizeof (*tmp));
      FUNC1 (tmp, bs, sizeof (*tmp));
      if (bs->commands != NULL)
	tmp->commands = FUNC0 (bs->commands);
      if (bs->old_val != NULL)
	tmp->old_val = FUNC2 (bs->old_val);

      if (p == NULL)
	/* This is the first thing in the chain.  */
	retval = tmp;
      else
	p->next = tmp;
      p = tmp;
    }
  p->next = NULL;
  return retval;
}