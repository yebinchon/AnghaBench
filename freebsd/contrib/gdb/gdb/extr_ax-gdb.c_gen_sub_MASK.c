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
struct axs_value {int /*<<< orphan*/  kind; int /*<<< orphan*/  type; } ;
struct agent_expr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aop_div_unsigned ; 
 int /*<<< orphan*/  aop_mul ; 
 int /*<<< orphan*/  aop_sub ; 
 int /*<<< orphan*/  FUNC3 (struct agent_expr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  axs_rvalue ; 
 int /*<<< orphan*/  builtin_type_long ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct agent_expr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct agent_expr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (struct agent_expr *ax, struct axs_value *value,
	 struct axs_value *value1, struct axs_value *value2)
{
  if (FUNC0 (value1->type) == TYPE_CODE_PTR)
    {
      /* Is it PTR - INT?  */
      if (FUNC0 (value2->type) == TYPE_CODE_INT)
	{
	  FUNC6 (ax, aop_mul, value1->type);
	  FUNC3 (ax, aop_sub);
	  FUNC5 (ax, value1->type);	/* Catch overflow.  */
	  value->type = value1->type;
	}

      /* Is it PTR - PTR?  Strictly speaking, the types ought to
         match, but this is what the normal GDB expression evaluator
         tests for.  */
      else if (FUNC0 (value2->type) == TYPE_CODE_PTR
	       && (FUNC1 (FUNC2 (value1->type))
		   == FUNC1 (FUNC2 (value2->type))))
	{
	  FUNC3 (ax, aop_sub);
	  FUNC6 (ax, aop_div_unsigned, value1->type);
	  value->type = builtin_type_long;	/* FIXME --- should be ptrdiff_t */
	}
      else
	FUNC4 ("\
First argument of `-' is a pointer, but second argument is neither\n\
an integer nor a pointer of the same type.");
    }

  /* Must be number + number.  */
  else if (FUNC0 (value1->type) == TYPE_CODE_INT
	   && FUNC0 (value2->type) == TYPE_CODE_INT)
    {
      FUNC3 (ax, aop_sub);
      FUNC5 (ax, value1->type);	/* Catch overflow.  */
      value->type = value1->type;
    }

  else
    FUNC4 ("Illegal combination of types in subtraction.");

  value->kind = axs_rvalue;
}