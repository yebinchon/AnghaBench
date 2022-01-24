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
 int /*<<< orphan*/  aop_add ; 
 int /*<<< orphan*/  aop_mul ; 
 int /*<<< orphan*/  aop_swap ; 
 int /*<<< orphan*/  FUNC1 (struct agent_expr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  axs_rvalue ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct agent_expr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct agent_expr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct agent_expr *ax, struct axs_value *value,
	 struct axs_value *value1, struct axs_value *value2, char *name)
{
  /* Is it INT+PTR?  */
  if (FUNC0 (value1->type) == TYPE_CODE_INT
      && FUNC0 (value2->type) == TYPE_CODE_PTR)
    {
      /* Swap the values and proceed normally.  */
      FUNC1 (ax, aop_swap);
      FUNC4 (ax, aop_mul, value2->type);
      FUNC1 (ax, aop_add);
      FUNC3 (ax, value2->type);	/* Catch overflow.  */
      value->type = value2->type;
    }

  /* Is it PTR+INT?  */
  else if (FUNC0 (value1->type) == TYPE_CODE_PTR
	   && FUNC0 (value2->type) == TYPE_CODE_INT)
    {
      FUNC4 (ax, aop_mul, value1->type);
      FUNC1 (ax, aop_add);
      FUNC3 (ax, value1->type);	/* Catch overflow.  */
      value->type = value1->type;
    }

  /* Must be number + number; the usual binary conversions will have
     brought them both to the same width.  */
  else if (FUNC0 (value1->type) == TYPE_CODE_INT
	   && FUNC0 (value2->type) == TYPE_CODE_INT)
    {
      FUNC1 (ax, aop_add);
      FUNC3 (ax, value1->type);	/* Catch overflow.  */
      value->type = value1->type;
    }

  else
    FUNC2 ("Illegal combination of types in %s.", name);

  value->kind = axs_rvalue;
}