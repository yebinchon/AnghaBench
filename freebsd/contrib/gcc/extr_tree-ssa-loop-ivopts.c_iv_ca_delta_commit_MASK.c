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
struct iv_ca_delta {int /*<<< orphan*/  use; struct cost_pair* new_cp; struct cost_pair* old_cp; struct iv_ca_delta* next_change; } ;
struct iv_ca {int dummy; } ;
struct cost_pair {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct cost_pair* FUNC1 (struct iv_ca*,int /*<<< orphan*/ ) ; 
 struct iv_ca_delta* FUNC2 (struct iv_ca_delta*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivopts_data*,struct iv_ca*,int /*<<< orphan*/ ,struct cost_pair*) ; 

__attribute__((used)) static void
FUNC4 (struct ivopts_data *data, struct iv_ca *ivs,
		    struct iv_ca_delta *delta, bool forward)
{
  struct cost_pair *from, *to;
  struct iv_ca_delta *act;

  if (!forward)
    delta = FUNC2 (delta);

  for (act = delta; act; act = act->next_change)
    {
      from = act->old_cp;
      to = act->new_cp;
      FUNC0 (FUNC1 (ivs, act->use) == from);
      FUNC3 (data, ivs, act->use, to);
    }

  if (!forward)
    FUNC2 (delta);
}