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
struct constraint_expr {int /*<<< orphan*/  type; scalar_t__ offset; int /*<<< orphan*/  var; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCALAR ; 
 int /*<<< orphan*/  escaped_vars_id ; 
 int /*<<< orphan*/  FUNC0 (struct constraint_expr,struct constraint_expr) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (struct constraint_expr rhs)
{
  struct constraint_expr lhs;
  
  lhs.var = escaped_vars_id;
  lhs.offset = 0;
  lhs.type = SCALAR;

  FUNC1 (FUNC0 (lhs, rhs));
}