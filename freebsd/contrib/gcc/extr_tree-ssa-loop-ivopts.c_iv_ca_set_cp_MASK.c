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
struct ivopts_data {int dummy; } ;
struct iv_use {unsigned int id; } ;
struct iv_ca {int* n_cand_uses; int /*<<< orphan*/  cand_use_cost; int /*<<< orphan*/  cand_cost; int /*<<< orphan*/  n_cands; int /*<<< orphan*/  n_regs; int /*<<< orphan*/  cands; struct cost_pair** cand_for_use; int /*<<< orphan*/  bad_uses; } ;
struct cost_pair {int /*<<< orphan*/  depends_on; scalar_t__ cost; TYPE_1__* cand; } ;
struct TYPE_2__ {unsigned int id; int /*<<< orphan*/  depends_on; scalar_t__ cost; scalar_t__ iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ivopts_data*,struct iv_ca*) ; 
 int /*<<< orphan*/  FUNC2 (struct iv_ca*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ivopts_data*,struct iv_ca*,struct iv_use*) ; 

__attribute__((used)) static void
FUNC4 (struct ivopts_data *data, struct iv_ca *ivs,
	      struct iv_use *use, struct cost_pair *cp)
{
  unsigned uid = use->id, cid;

  if (ivs->cand_for_use[uid] == cp)
    return;

  if (ivs->cand_for_use[uid])
    FUNC3 (data, ivs, use);

  if (cp)
    {
      cid = cp->cand->id;

      ivs->bad_uses--;
      ivs->cand_for_use[uid] = cp;
      ivs->n_cand_uses[cid]++;
      if (ivs->n_cand_uses[cid] == 1)
	{
	  FUNC0 (ivs->cands, cid);
	  /* Do not count the pseudocandidates.  */
	  if (cp->cand->iv)
	    ivs->n_regs++;
	  ivs->n_cands++;
	  ivs->cand_cost += cp->cand->cost;

	  FUNC2 (ivs, cp->cand->depends_on);
	}

      ivs->cand_use_cost += cp->cost;
      FUNC2 (ivs, cp->depends_on);
      FUNC1 (data, ivs);
    }
}