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
typedef  union exp_element {int dummy; } exp_element ;
struct expression {union exp_element* elts; } ;
struct cleanup {int dummy; } ;
struct axs_value {int dummy; } ;
struct agent_expr {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  aop_end ; 
 int /*<<< orphan*/  FUNC0 (struct agent_expr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (union exp_element**,struct agent_expr*,struct axs_value*) ; 
 int /*<<< orphan*/  FUNC3 (struct agent_expr*,struct axs_value*) ; 
 struct cleanup* FUNC4 (struct agent_expr*) ; 
 struct agent_expr* FUNC5 (int /*<<< orphan*/ ) ; 
 int trace_kludge ; 

struct agent_expr *
FUNC6 (CORE_ADDR scope, struct expression *expr)
{
  struct cleanup *old_chain = 0;
  struct agent_expr *ax = FUNC5 (scope);
  union exp_element *pc;
  struct axs_value value;

  old_chain = FUNC4 (ax);

  pc = expr->elts;
  trace_kludge = 1;
  FUNC2 (&pc, ax, &value);

  /* Make sure we record the final object, and get rid of it.  */
  FUNC3 (ax, &value);

  /* Oh, and terminate.  */
  FUNC0 (ax, aop_end);

  /* We have successfully built the agent expr, so cancel the cleanup
     request.  If we add more cleanups that we always want done, this
     will have to get more complicated.  */
  FUNC1 (old_chain);
  return ax;
}