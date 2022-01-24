#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct TYPE_3__ {int /*<<< orphan*/  expr; } ;

/* Variables and functions */
 scalar_t__ CONVERT_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ VALUE_HANDLE ; 
 TYPE_2__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC9 (tree *expr_p)
{
  tree expr = *expr_p;
  tree t;

  if (!((FUNC1 (expr) == NOP_EXPR
	 || FUNC1 (expr) == CONVERT_EXPR)
	&& FUNC1 (FUNC2 (expr, 0)) == VALUE_HANDLE
	&& !FUNC5 (FUNC2 (expr, 0))))
    return false;

  t = FUNC6 (FUNC1 (expr), FUNC3 (expr),
		  FUNC4 (FUNC2 (expr, 0))->head->expr);
  if (!t)
    return false;

  /* Strip useless type conversions, which is safe in the optimizers but
     not generally in fold.  */
  FUNC0 (t);

  /* Disallow value expressions we have no value number for already, as
     we would miss a leader for it here.  */
  if (!(FUNC1 (t) == VALUE_HANDLE
	|| FUNC7 (t)))
    t = FUNC8 (t, NULL);

  if (t && t != expr)
    {
      *expr_p = t;
      return true;
    }
  return false;
}