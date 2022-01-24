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
struct value {int /*<<< orphan*/  type; } ;
struct type {int dummy; } ;
struct axs_value {scalar_t__ kind; struct type* type; } ;
struct agent_expr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ axs_lvalue_memory ; 
 int /*<<< orphan*/  builtin_type_int ; 
 struct value* FUNC1 (union exp_element**) ; 
 struct type* FUNC2 (int /*<<< orphan*/ ,struct type*,struct type*) ; 
 struct type* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (union exp_element**,struct agent_expr*,struct axs_value*) ; 
 int FUNC6 (struct value*) ; 

__attribute__((used)) static void
FUNC7 (union exp_element **pc, struct agent_expr *ax,
	    struct axs_value *value)
{
  struct axs_value value1;
  /* We don't want to turn this into an rvalue, so no conversions
     here.  */
  FUNC5 (pc, ax, &value1);
  if (value1.kind != axs_lvalue_memory)
    FUNC4 ("Left operand of `@' must be an object in memory.");

  /* Evaluate the length; it had better be a constant.  */
  {
    struct value *v = FUNC1 (pc);
    int length;

    if (!v)
      FUNC4 ("Right operand of `@' must be a constant, in agent expressions.");
    if (FUNC0 (v->type) != TYPE_CODE_INT)
      FUNC4 ("Right operand of `@' must be an integer.");
    length = FUNC6 (v);
    if (length <= 0)
      FUNC4 ("Right operand of `@' must be positive.");

    /* The top of the stack is already the address of the object, so
       all we need to do is frob the type of the lvalue.  */
    {
      /* FIXME-type-allocation: need a way to free this type when we are
         done with it.  */
      struct type *range
      = FUNC3 (0, builtin_type_int, 0, length - 1);
      struct type *array = FUNC2 (0, value1.type, range);

      value->kind = axs_lvalue_memory;
      value->type = array;
    }
  }
}