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
typedef  int /*<<< orphan*/  tree ;
struct assign_parm_data_all {int /*<<< orphan*/  reg_parm_stack_space; int /*<<< orphan*/  args_so_far; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC4 (struct assign_parm_data_all*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5 (struct assign_parm_data_all *all)
{
  tree fntype;

  FUNC4 (all, 0, sizeof (*all));

  fntype = FUNC3 (current_function_decl);

#ifdef INIT_CUMULATIVE_INCOMING_ARGS
  INIT_CUMULATIVE_INCOMING_ARGS (all->args_so_far, fntype, NULL_RTX);
#else
  FUNC0 (all->args_so_far, fntype, NULL_RTX,
			current_function_decl, -1);
#endif

#ifdef REG_PARM_STACK_SPACE
  all->reg_parm_stack_space = REG_PARM_STACK_SPACE (current_function_decl);
#endif
}