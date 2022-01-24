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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (union exp_element**,struct agent_expr*,struct axs_value*) ; 
 struct cleanup* FUNC2 (struct agent_expr*) ; 
 struct agent_expr* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ trace_kludge ; 

struct agent_expr *
FUNC4 (struct expression *expr, struct axs_value *value)
{
  struct cleanup *old_chain = 0;
  struct agent_expr *ax = FUNC3 (0);
  union exp_element *pc;

  old_chain = FUNC2 (ax);

  pc = expr->elts;
  trace_kludge = 0;
  FUNC1 (&pc, ax, value);

  /* We have successfully built the agent expr, so cancel the cleanup
     request.  If we add more cleanups that we always want done, this
     will have to get more complicated.  */
  FUNC0 (old_chain);
  return ax;
}