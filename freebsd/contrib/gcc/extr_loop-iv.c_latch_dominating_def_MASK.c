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
struct df_reg_info {struct df_ref* reg_chain; } ;
struct df_ref {struct df_ref* next_reg; } ;
struct df_rd_bb_info {int /*<<< orphan*/  out; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_3__ {int /*<<< orphan*/  latch; } ;

/* Variables and functions */
 struct df_rd_bb_info* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct df_ref*) ; 
 int /*<<< orphan*/  FUNC2 (struct df_ref*) ; 
 struct df_reg_info* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* current_loop ; 
 int /*<<< orphan*/  df ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7 (rtx reg, struct df_ref **def)
{
  struct df_ref *single_rd = NULL, *adef;
  unsigned regno = FUNC4 (reg);
  struct df_reg_info *reg_info = FUNC3 (df, regno);
  struct df_rd_bb_info *bb_info = FUNC0 (df, current_loop->latch);

  for (adef = reg_info->reg_chain; adef; adef = adef->next_reg)
    {
      if (!FUNC5 (bb_info->out, FUNC2 (adef)))
	continue;

      /* More than one reaching definition.  */
      if (single_rd)
	return false;

      if (!FUNC6 (current_loop, FUNC1 (adef)))
	return false;

      single_rd = adef;
    }

  *def = single_rd;
  return true;
}