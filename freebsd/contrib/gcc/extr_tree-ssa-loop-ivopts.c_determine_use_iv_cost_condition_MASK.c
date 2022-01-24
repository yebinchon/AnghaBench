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
typedef  int /*<<< orphan*/ * tree ;
struct ivopts_data {int dummy; } ;
struct iv_use {int /*<<< orphan*/ ** op_p; } ;
struct iv_cand {int /*<<< orphan*/  iv; } ;
typedef  int /*<<< orphan*/ * bitmap ;
struct TYPE_2__ {int /*<<< orphan*/ * base; int /*<<< orphan*/  step; } ;

/* Variables and functions */
 unsigned int INFTY ; 
 int /*<<< orphan*/ * NULL_TREE ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct ivopts_data* fd_ivopts_data ; 
 int /*<<< orphan*/  find_depends ; 
 unsigned int FUNC2 (struct ivopts_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 unsigned int FUNC3 (struct ivopts_data*,struct iv_use*,struct iv_cand*,int,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC4 (struct ivopts_data*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ivopts_data*,struct iv_use*,struct iv_cand*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (struct ivopts_data*,struct iv_use*,struct iv_cand*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9 (struct ivopts_data *data,
				 struct iv_use *use, struct iv_cand *cand)
{
  tree bound = NULL_TREE, op, cond;
  bitmap depends_on = NULL;
  unsigned cost;

  /* Only consider real candidates.  */
  if (!cand->iv)
    {
      FUNC6 (data, use, cand, INFTY, NULL, NULL_TREE);
      return false;
    }

  if (FUNC5 (data, use, cand, &bound))
    {
      cost = FUNC2 (data, bound, &depends_on);

      FUNC6 (data, use, cand, cost, depends_on, bound);
      return cost != INFTY;
    }

  /* The induction variable elimination failed; just express the original
     giv.  If it is compared with an invariant, note that we cannot get
     rid of it.  */
  cost = FUNC3 (data, use, cand, false, &depends_on);

  cond = *use->op_p;
  if (FUNC0 (cond) != SSA_NAME)
    {
      op = FUNC1 (cond, 0);
      if (FUNC0 (op) == SSA_NAME && !FUNC8 (FUNC4 (data, op)->step))
	op = FUNC1 (cond, 1);
      if (FUNC0 (op) == SSA_NAME)
	{
	  op = FUNC4 (data, op)->base;
	  fd_ivopts_data = data;
	  FUNC7 (&op, find_depends, &depends_on, NULL);
	}
    }

  FUNC6 (data, use, cand, cost, depends_on, NULL);
  return cost != INFTY;
}