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
typedef  int /*<<< orphan*/  tree ;
struct ivopts_data {int /*<<< orphan*/  current_loop; } ;
struct iv_cand {int /*<<< orphan*/  var_after; int /*<<< orphan*/  var_before; } ;
struct iv {int /*<<< orphan*/  ssa_name; int /*<<< orphan*/  step; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_ORIGINAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PHI_NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ivopts_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct iv_cand* FUNC5 (struct ivopts_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (struct ivopts_data *data, struct iv *iv)
{
  tree phi, def;
  struct iv_cand *cand;

  FUNC4 (data, iv->base, iv->step, true, NULL);

  /* The same, but with initial value zero.  */
  FUNC4 (data,
		 FUNC6 (FUNC3 (iv->base), 0),
		 iv->step, true, NULL);

  phi = FUNC1 (iv->ssa_name);
  if (FUNC2 (phi) == PHI_NODE)
    {
      /* Additionally record the possibility of leaving the original iv
	 untouched.  */
      def = FUNC0 (phi, FUNC7 (data->current_loop));
      cand = FUNC5 (data,
			      iv->base, iv->step, true, IP_ORIGINAL, NULL,
			      FUNC1 (def));
      cand->var_before = iv->ssa_name;
      cand->var_after = def;
    }
}