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
struct ivopts_data {int consider_all_candidates; int /*<<< orphan*/  important_candidates; } ;
struct iv_use {int /*<<< orphan*/  related_cands; } ;
struct iv_cand {scalar_t__ important; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int CONSIDER_ALL_CANDIDATES_BOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 struct iv_cand* FUNC3 (struct ivopts_data*,unsigned int) ; 
 struct iv_use* FUNC4 (struct ivopts_data*,unsigned int) ; 
 unsigned int FUNC5 (struct ivopts_data*) ; 
 unsigned int FUNC6 (struct ivopts_data*) ; 

__attribute__((used)) static void
FUNC7 (struct ivopts_data *data)
{
  unsigned i;
  struct iv_use *use;

  for (i = 0; i < FUNC5 (data); i++)
    {
      struct iv_cand *cand = FUNC3 (data, i);

      if (cand->important)
	FUNC2 (data->important_candidates, i);
    }

  data->consider_all_candidates = (FUNC5 (data)
				   <= CONSIDER_ALL_CANDIDATES_BOUND);

  if (data->consider_all_candidates)
    {
      /* We will not need "related_cands" bitmaps in this case,
	 so release them to decrease peak memory consumption.  */
      for (i = 0; i < FUNC6 (data); i++)
	{
	  use = FUNC4 (data, i);
	  FUNC0 (use->related_cands);
	}
    }
  else
    {
      /* Add important candidates to the related_cands bitmaps.  */
      for (i = 0; i < FUNC6 (data); i++)
	FUNC1 (FUNC4 (data, i)->related_cands,
			 data->important_candidates);
    }
}