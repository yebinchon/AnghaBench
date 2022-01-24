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
struct TYPE_2__ {size_t reg; int size; int /*<<< orphan*/  hard_reg_preferences; int /*<<< orphan*/  hard_reg_conflicts; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* allocno ; 
 size_t* allocno_order ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int max_allocno ; 
 int max_regno ; 
 size_t* reg_allocno ; 
 scalar_t__* reg_renumber ; 

__attribute__((used)) static void
FUNC3 (FILE *file)
{
  int i;
  int has_preferences;
  int nregs;
  nregs = 0;
  for (i = 0; i < max_allocno; i++)
    {
      if (reg_renumber[allocno[allocno_order[i]].reg] >= 0)
	continue;
      nregs++;
    }
  FUNC2 (file, ";; %d regs to allocate:", nregs);
  for (i = 0; i < max_allocno; i++)
    {
      int j;
      if (reg_renumber[allocno[allocno_order[i]].reg] >= 0)
	continue;
      FUNC2 (file, " %d", allocno[allocno_order[i]].reg);
      for (j = 0; j < max_regno; j++)
	if (reg_allocno[j] == allocno_order[i]
	    && j != allocno[allocno_order[i]].reg)
	  FUNC2 (file, "+%d", j);
      if (allocno[allocno_order[i]].size != 1)
	FUNC2 (file, " (%d)", allocno[allocno_order[i]].size);
    }
  FUNC2 (file, "\n");

  for (i = 0; i < max_allocno; i++)
    {
      int j;
      FUNC2 (file, ";; %d conflicts:", allocno[i].reg);
      for (j = 0; j < max_allocno; j++)
	if (FUNC0 (j, i))
	  FUNC2 (file, " %d", allocno[j].reg);
      for (j = 0; j < FIRST_PSEUDO_REGISTER; j++)
	if (FUNC1 (allocno[i].hard_reg_conflicts, j))
	  FUNC2 (file, " %d", j);
      FUNC2 (file, "\n");

      has_preferences = 0;
      for (j = 0; j < FIRST_PSEUDO_REGISTER; j++)
	if (FUNC1 (allocno[i].hard_reg_preferences, j))
	  has_preferences = 1;

      if (! has_preferences)
	continue;
      FUNC2 (file, ";; %d preferences:", allocno[i].reg);
      for (j = 0; j < FIRST_PSEUDO_REGISTER; j++)
	if (FUNC1 (allocno[i].hard_reg_preferences, j))
	  FUNC2 (file, " %d", j);
      FUNC2 (file, "\n");
    }
  FUNC2 (file, "\n");
}