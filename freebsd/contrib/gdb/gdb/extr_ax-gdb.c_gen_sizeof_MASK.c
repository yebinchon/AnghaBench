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
struct axs_value {int /*<<< orphan*/  type; int /*<<< orphan*/  kind; } ;
struct agent_expr {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct agent_expr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  axs_rvalue ; 
 int /*<<< orphan*/  builtin_type_int ; 
 int /*<<< orphan*/  FUNC2 (union exp_element**,struct agent_expr*,struct axs_value*) ; 

__attribute__((used)) static void
FUNC3 (union exp_element **pc, struct agent_expr *ax,
	    struct axs_value *value)
{
  /* We don't care about the value of the operand expression; we only
     care about its type.  However, in the current arrangement, the
     only way to find an expression's type is to generate code for it.
     So we generate code for the operand, and then throw it away,
     replacing it with code that simply pushes its size.  */
  int start = ax->len;
  FUNC2 (pc, ax, value);

  /* Throw away the code we just generated.  */
  ax->len = start;

  FUNC1 (ax, FUNC0 (value->type));
  value->kind = axs_rvalue;
  value->type = builtin_type_int;
}