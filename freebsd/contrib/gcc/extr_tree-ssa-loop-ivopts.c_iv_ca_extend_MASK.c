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
struct iv_use {int dummy; } ;
struct iv_cand {int dummy; } ;
struct iv_ca_delta {int dummy; } ;
struct iv_ca {unsigned int upto; } ;
struct cost_pair {struct iv_cand* cand; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cost_pair*,struct cost_pair*) ; 
 struct cost_pair* FUNC1 (struct ivopts_data*,struct iv_use*,struct iv_cand*) ; 
 struct cost_pair* FUNC2 (struct iv_ca*,struct iv_use*) ; 
 unsigned int FUNC3 (struct iv_ca*) ; 
 struct iv_ca_delta* FUNC4 (struct iv_use*,struct cost_pair*,struct cost_pair*,struct iv_ca_delta*) ; 
 int /*<<< orphan*/  FUNC5 (struct ivopts_data*,struct iv_ca*,struct iv_ca_delta*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iv_ca*,struct cost_pair*) ; 
 unsigned int FUNC7 (struct iv_ca*) ; 
 struct iv_use* FUNC8 (struct ivopts_data*,unsigned int) ; 

__attribute__((used)) static unsigned
FUNC9 (struct ivopts_data *data, struct iv_ca *ivs,
	      struct iv_cand *cand, struct iv_ca_delta **delta,
	      unsigned *n_ivs)
{
  unsigned i, cost;
  struct iv_use *use;
  struct cost_pair *old_cp, *new_cp;

  *delta = NULL;
  for (i = 0; i < ivs->upto; i++)
    {
      use = FUNC8 (data, i);
      old_cp = FUNC2 (ivs, use);

      if (old_cp
	  && old_cp->cand == cand)
	continue;

      new_cp = FUNC1 (data, use, cand);
      if (!new_cp)
	continue;

      if (!FUNC6 (ivs, new_cp))
	continue;
      
      if (!FUNC0 (new_cp, old_cp))
	continue;

      *delta = FUNC4 (use, old_cp, new_cp, *delta);
    }

  FUNC5 (data, ivs, *delta, true);
  cost = FUNC3 (ivs);
  if (n_ivs)
    *n_ivs = FUNC7 (ivs);
  FUNC5 (data, ivs, *delta, false);

  return cost;
}