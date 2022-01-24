#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct loop {int /*<<< orphan*/  latch; } ;
struct ivopts_data {struct loop* current_loop; } ;
struct iv_use {scalar_t__ stmt; } ;
struct iv_cand {TYPE_3__* iv; } ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_6__ {scalar_t__ step; } ;
struct TYPE_5__ {int /*<<< orphan*/  dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 scalar_t__ COND_EXPR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GE_EXPR ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/  FUNC5 (struct loop*,struct iv_cand*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ivopts_data*,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC15 (struct ivopts_data *data,
		  struct iv_use *use, struct iv_cand *cand, tree *bound)
{
  basic_block ex_bb;
  edge exit;
  tree nit, nit_type;
  tree wider_type, period, per_type;
  struct loop *loop = data->current_loop;
  
  if (FUNC1 (cand->iv->step) != INTEGER_CST)
    return false;

  /* For now works only for exits that dominate the loop latch.  TODO -- extend
     for other conditions inside loop body.  */
  ex_bb = FUNC4 (use->stmt);
  if (use->stmt != FUNC13 (ex_bb)
      || FUNC1 (use->stmt) != COND_EXPR)
    return false;
  if (!FUNC6 (CDI_DOMINATORS, loop->latch, ex_bb))
    return false;

  exit = FUNC0 (ex_bb, 0);
  if (FUNC7 (loop, exit->dest))
    exit = FUNC0 (ex_bb, 1);
  if (FUNC7 (loop, exit->dest))
    return false;

  nit = FUNC14 (data, exit);
  if (!nit)
    return false;

  nit_type = FUNC2 (nit);

  /* Determine whether we may use the variable to test whether niter iterations
     elapsed.  This is the case iff the period of the induction variable is
     greater than the number of iterations.  */
  period = FUNC12 (cand->iv);
  if (!period)
    return false;
  per_type = FUNC2 (period);

  wider_type = FUNC2 (period);
  if (FUNC3 (nit_type) < FUNC3 (per_type))
    wider_type = per_type;
  else
    wider_type = nit_type;

  if (!FUNC11 (FUNC9 (GE_EXPR, boolean_type_node,
				      FUNC10 (wider_type, period),
				      FUNC10 (wider_type, nit))))
    return false;

  *bound = FUNC8 (FUNC5 (loop, cand, use->stmt, nit));
  return true;
}