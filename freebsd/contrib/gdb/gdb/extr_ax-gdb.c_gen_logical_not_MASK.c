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
struct axs_value {int /*<<< orphan*/  type; } ;
struct agent_expr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ TYPE_CODE_PTR ; 
 int /*<<< orphan*/  aop_log_not ; 
 int /*<<< orphan*/  FUNC1 (struct agent_expr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_type_int ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct agent_expr*,struct axs_value*) ; 

__attribute__((used)) static void
FUNC4 (struct agent_expr *ax, struct axs_value *value)
{
  if (FUNC0 (value->type) != TYPE_CODE_INT
      && FUNC0 (value->type) != TYPE_CODE_PTR)
    FUNC2 ("Illegal type of operand to `!'.");

  FUNC3 (ax, value);
  FUNC1 (ax, aop_log_not);
  value->type = builtin_type_int;
}