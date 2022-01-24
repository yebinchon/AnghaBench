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
struct value_data {TYPE_1__* e; } ;
struct TYPE_2__ {unsigned int oldest_regno; scalar_t__ mode; unsigned int next_regno; } ;
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 char* FUNC1 (scalar_t__) ; 
 unsigned int INVALID_REGNUM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC6 (struct value_data *vd)
{
  HARD_REG_SET set;
  unsigned int i, j;

  FUNC0 (set);

  for (i = 0; i < FIRST_PSEUDO_REGISTER; ++i)
    if (vd->e[i].oldest_regno == i)
      {
	if (vd->e[i].mode == VOIDmode)
	  {
	    if (vd->e[i].next_regno != INVALID_REGNUM)
	      FUNC4 (stderr, "[%u] Bad next_regno for empty chain (%u)\n",
		       i, vd->e[i].next_regno);
	    continue;
	  }

	FUNC2 (set, i);
	FUNC4 (stderr, "[%u %s] ", i, FUNC1 (vd->e[i].mode));

	for (j = vd->e[i].next_regno;
	     j != INVALID_REGNUM;
	     j = vd->e[j].next_regno)
	  {
	    if (FUNC3 (set, j))
	      {
		FUNC4 (stderr, "[%u] Loop in regno chain\n", j);
		return;
	      }

	    if (vd->e[j].oldest_regno != i)
	      {
		FUNC4 (stderr, "[%u] Bad oldest_regno (%u)\n",
			 j, vd->e[j].oldest_regno);
		return;
	      }
	    FUNC2 (set, j);
	    FUNC4 (stderr, "[%u %s] ", j, FUNC1 (vd->e[j].mode));
	  }
	FUNC5 ('\n', stderr);
      }

  for (i = 0; i < FIRST_PSEUDO_REGISTER; ++i)
    if (! FUNC3 (set, i)
	&& (vd->e[i].mode != VOIDmode
	    || vd->e[i].oldest_regno != i
	    || vd->e[i].next_regno != INVALID_REGNUM))
      FUNC4 (stderr, "[%u] Non-empty reg in chain (%s %u %i)\n",
	       i, FUNC1 (vd->e[i].mode), vd->e[i].oldest_regno,
	       vd->e[i].next_regno);
}