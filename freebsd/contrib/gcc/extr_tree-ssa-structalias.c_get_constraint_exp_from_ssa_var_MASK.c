#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct constraint_expr {scalar_t__ var; scalar_t__ offset; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRESSOF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ PARM_DECL ; 
 int /*<<< orphan*/  SCALAR ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ anything_id ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_1__* FUNC7 (scalar_t__) ; 
 scalar_t__ readonly_id ; 

__attribute__((used)) static struct constraint_expr
FUNC8 (tree t)
{
  struct constraint_expr cexpr;

  FUNC6 (FUNC2 (t) || FUNC0 (t));

  /* For parameters, get at the points-to set for the actual parm
     decl.  */
  if (FUNC3 (t) == SSA_NAME
      && FUNC3 (FUNC1 (t)) == PARM_DECL
      && FUNC5 (FUNC1 (t)) == t)
    return FUNC8 (FUNC1 (t));

  cexpr.type = SCALAR;

  cexpr.var = FUNC7 (t)->id;
  /* If we determine the result is "anything", and we know this is readonly,
     say it points to readonly memory instead.  */
  if (cexpr.var == anything_id && FUNC4 (t))
    {
      cexpr.type = ADDRESSOF;
      cexpr.var = readonly_id;
    }

  cexpr.offset = 0;
  return cexpr;
}