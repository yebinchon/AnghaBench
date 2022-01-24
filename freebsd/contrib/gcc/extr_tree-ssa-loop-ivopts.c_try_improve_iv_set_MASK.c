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
struct ivopts_data {int dummy; } ;
struct iv_cand {int dummy; } ;
struct iv_ca_delta {int dummy; } ;
struct iv_ca {int dummy; } ;

/* Variables and functions */
 unsigned int ALWAYS_PRUNE_CAND_SET_BOUND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct iv_ca*,struct iv_cand*) ; 
 unsigned int FUNC2 (struct iv_ca*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivopts_data*,struct iv_ca*,struct iv_ca_delta*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iv_ca_delta**) ; 
 struct iv_ca_delta* FUNC5 (struct iv_ca_delta*,struct iv_ca_delta*) ; 
 unsigned int FUNC6 (struct ivopts_data*,struct iv_ca*,struct iv_cand*,struct iv_ca_delta**,unsigned int*) ; 
 unsigned int FUNC7 (struct ivopts_data*,struct iv_ca*,struct iv_cand*,struct iv_ca_delta**) ; 
 struct iv_cand* FUNC8 (struct ivopts_data*,unsigned int) ; 
 unsigned int FUNC9 (struct ivopts_data*) ; 

__attribute__((used)) static bool
FUNC10 (struct ivopts_data *data, struct iv_ca *ivs)
{
  unsigned i, acost, best_cost = FUNC2 (ivs), n_ivs;
  struct iv_ca_delta *best_delta = NULL, *act_delta, *tmp_delta;
  struct iv_cand *cand;

  /* Try extending the set of induction variables by one.  */
  for (i = 0; i < FUNC9 (data); i++)
    {
      cand = FUNC8 (data, i);
      
      if (FUNC1 (ivs, cand))
	continue;

      acost = FUNC6 (data, ivs, cand, &act_delta, &n_ivs);
      if (!act_delta)
	continue;

      /* If we successfully added the candidate and the set is small enough,
	 try optimizing it by removing other candidates.  */
      if (n_ivs <= ALWAYS_PRUNE_CAND_SET_BOUND)
      	{
	  FUNC3 (data, ivs, act_delta, true);
	  acost = FUNC7 (data, ivs, cand, &tmp_delta);
	  FUNC3 (data, ivs, act_delta, false);
	  act_delta = FUNC5 (act_delta, tmp_delta);
	}

      if (acost < best_cost)
	{
	  best_cost = acost;
	  FUNC4 (&best_delta);
	  best_delta = act_delta;
	}
      else
	FUNC4 (&act_delta);
    }

  if (!best_delta)
    {
      /* Try removing the candidates from the set instead.  */
      best_cost = FUNC7 (data, ivs, NULL, &best_delta);

      /* Nothing more we can do.  */
      if (!best_delta)
	return false;
    }

  FUNC3 (data, ivs, best_delta, true);
  FUNC0 (best_cost == FUNC2 (ivs));
  FUNC4 (&best_delta);
  return true;
}