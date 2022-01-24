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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  beacon; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct cfg80211_beacon_data {int head_len; int tail_len; int /*<<< orphan*/  probe_resp_len; int /*<<< orphan*/  probe_resp; int /*<<< orphan*/ * tail; int /*<<< orphan*/ * head; } ;
struct beacon_data {int head_len; int tail_len; int /*<<< orphan*/ * tail; int /*<<< orphan*/ * head; } ;

/* Variables and functions */
 int BSS_CHANGED_AP_PROBE_RESP ; 
 int BSS_CHANGED_BEACON ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct beacon_data*,int /*<<< orphan*/ ) ; 
 struct beacon_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct beacon_data*) ; 
 int /*<<< orphan*/  rcu_head ; 
 struct beacon_data* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_sub_if_data *sdata,
				   struct cfg80211_beacon_data *params)
{
	struct beacon_data *new, *old;
	int new_head_len, new_tail_len;
	int size, err;
	u32 changed = BSS_CHANGED_BEACON;

	old = FUNC5(sdata->u.ap.beacon);

	/* Need to have a beacon head if we don't have one yet */
	if (!params->head && !old)
		return -EINVAL;

	/* new or old head? */
	if (params->head)
		new_head_len = params->head_len;
	else
		new_head_len = old->head_len;

	/* new or old tail? */
	if (params->tail || !old)
		/* params->tail_len will be zero for !params->tail */
		new_tail_len = params->tail_len;
	else
		new_tail_len = old->tail_len;

	size = sizeof(*new) + new_head_len + new_tail_len;

	new = FUNC2(size, GFP_KERNEL);
	if (!new)
		return -ENOMEM;

	/* start filling the new info now */

	/*
	 * pointers go into the block we allocated,
	 * memory is | beacon_data | head | tail |
	 */
	new->head = ((u8 *) new) + sizeof(*new);
	new->tail = new->head + new_head_len;
	new->head_len = new_head_len;
	new->tail_len = new_tail_len;

	/* copy in head */
	if (params->head)
		FUNC3(new->head, params->head, new_head_len);
	else
		FUNC3(new->head, old->head, new_head_len);

	/* copy in optional tail */
	if (params->tail)
		FUNC3(new->tail, params->tail, new_tail_len);
	else
		if (old)
			FUNC3(new->tail, old->tail, new_tail_len);

	err = FUNC0(sdata, params->probe_resp,
				       params->probe_resp_len);
	if (err < 0)
		return err;
	if (err == 0)
		changed |= BSS_CHANGED_AP_PROBE_RESP;

	FUNC4(sdata->u.ap.beacon, new);

	if (old)
		FUNC1(old, rcu_head);

	return changed;
}