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
struct uwb_rsv_alloc_info {int max_interval; scalar_t__* bm; int /*<<< orphan*/  unsafe_allocated_mases; int /*<<< orphan*/  safe_allocated_mases; int /*<<< orphan*/  max_mas; int /*<<< orphan*/  min_mas; } ;
struct uwb_rsv {int max_interval; int /*<<< orphan*/  max_mas; int /*<<< orphan*/  min_mas; } ;
struct uwb_mas_bm {int /*<<< orphan*/  unsafe; int /*<<< orphan*/  safe; int /*<<< orphan*/  unsafe_bm; int /*<<< orphan*/  bm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UWB_NUM_MAS ; 
 scalar_t__ UWB_RSV_ALLOC_FOUND ; 
 int UWB_RSV_ALLOC_NOT_FOUND ; 
 scalar_t__ UWB_RSV_MAS_NOT_AVAIL ; 
 scalar_t__ UWB_RSV_MAS_SAFE ; 
 scalar_t__ UWB_RSV_MAS_UNSAFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_rsv_alloc_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_rsv_alloc_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rsv_alloc_info*) ; 
 struct uwb_rsv_alloc_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct uwb_rsv_alloc_info*,int) ; 
 scalar_t__ FUNC9 (struct uwb_rsv_alloc_info*) ; 

int FUNC10(struct uwb_rsv *rsv, struct uwb_mas_bm *available, 
				 struct uwb_mas_bm *result)
{
	struct uwb_rsv_alloc_info *ai;
	int interval;
	int bit_index;

	ai = FUNC5(sizeof(struct uwb_rsv_alloc_info), GFP_KERNEL);
	
	ai->min_mas = rsv->min_mas;
	ai->max_mas = rsv->max_mas;
	ai->max_interval = rsv->max_interval;


	/* fill the not available vector from the available bm */
	for (bit_index = 0; bit_index < UWB_NUM_MAS; bit_index++) {
		if (!FUNC7(bit_index, available->bm))
			ai->bm[bit_index] = UWB_RSV_MAS_NOT_AVAIL;
	}

	if (ai->max_interval == 1) {
		FUNC3(ai);
		if (FUNC9(ai) == UWB_RSV_ALLOC_FOUND)
			goto alloc_found;
		else
			goto alloc_not_found;
	}

	FUNC2(ai);
        
	for (interval = 16; interval >= 2; interval>>=1) {
		if (interval > ai->max_interval)
			continue;
		if (FUNC8(ai, interval) == UWB_RSV_ALLOC_FOUND)
			goto alloc_found;
	}

	/* try row reservation if no column is found */
	FUNC3(ai);
	if (FUNC9(ai) == UWB_RSV_ALLOC_FOUND)
		goto alloc_found;
	else
		goto alloc_not_found;

  alloc_found:
	FUNC1(result->bm, UWB_NUM_MAS);
	FUNC1(result->unsafe_bm, UWB_NUM_MAS);
	/* fill the safe and unsafe bitmaps */
	for (bit_index = 0; bit_index < UWB_NUM_MAS; bit_index++) {
		if (ai->bm[bit_index] == UWB_RSV_MAS_SAFE)
			FUNC6(bit_index, result->bm);
		else if (ai->bm[bit_index] == UWB_RSV_MAS_UNSAFE)
			FUNC6(bit_index, result->unsafe_bm);
	}
	FUNC0(result->bm, result->bm, result->unsafe_bm, UWB_NUM_MAS);

	result->safe   = ai->safe_allocated_mases;
	result->unsafe = ai->unsafe_allocated_mases;
	
	FUNC4(ai);		
	return UWB_RSV_ALLOC_FOUND;
  
  alloc_not_found:
	FUNC4(ai);
	return UWB_RSV_ALLOC_NOT_FOUND;
}