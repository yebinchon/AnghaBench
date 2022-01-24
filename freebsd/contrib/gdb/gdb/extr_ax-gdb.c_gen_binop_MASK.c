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
typedef  enum agent_op { ____Placeholder_agent_op } agent_op ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct agent_expr*,int) ; 
 int /*<<< orphan*/  axs_rvalue ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct agent_expr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct agent_expr *ax, struct axs_value *value,
	   struct axs_value *value1, struct axs_value *value2, enum agent_op op,
	   enum agent_op op_unsigned, int may_carry, char *name)
{
  /* We only handle INT op INT.  */
  if ((FUNC0 (value1->type) != TYPE_CODE_INT)
      || (FUNC0 (value2->type) != TYPE_CODE_INT))
    FUNC3 ("Illegal combination of types in %s.", name);

  FUNC2 (ax,
	     FUNC1 (value1->type) ? op_unsigned : op);
  if (may_carry)
    FUNC4 (ax, value1->type);	/* catch overflow */
  value->type = value1->type;
  value->kind = axs_rvalue;
}