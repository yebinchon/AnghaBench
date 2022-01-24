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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ data; } ;
struct mesh_path {int flags; int /*<<< orphan*/  frame_queue; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  flags; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/ * addr3; } ;

/* Variables and functions */
 int ENOENT ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_INTFL_NEED_TXPROCESSING ; 
 scalar_t__ FUNC1 (struct mesh_path*) ; 
 scalar_t__ MESH_FRAME_QUEUE_LEN ; 
 int MESH_PATH_RESOLVING ; 
 int /*<<< orphan*/  PREQ_Q_F_START ; 
 int FUNC2 (struct mesh_path*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int FUNC5 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 struct mesh_path* FUNC6 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 struct mesh_path* FUNC8 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mesh_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC15(struct ieee80211_sub_if_data *sdata,
			 struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct mesh_path *mpath;
	struct sk_buff *skb_to_free = NULL;
	u8 *target_addr = hdr->addr3;
	int err = 0;

	/* Nulls are only sent to peers for PS and should be pre-addressed */
	if (FUNC3(hdr->frame_control))
		return 0;

	FUNC10();
	err = FUNC5(sdata, skb);
	if (!err)
		goto endlookup;

	/* no nexthop found, start resolving */
	mpath = FUNC8(sdata, target_addr);
	if (!mpath) {
		mpath = FUNC6(sdata, target_addr);
		if (FUNC1(mpath)) {
			FUNC7(sdata, skb);
			err = FUNC2(mpath);
			goto endlookup;
		}
	}

	if (!(mpath->flags & MESH_PATH_RESOLVING))
		FUNC9(mpath, PREQ_Q_F_START);

	if (FUNC13(&mpath->frame_queue) >= MESH_FRAME_QUEUE_LEN)
		skb_to_free = FUNC12(&mpath->frame_queue);

	info->flags |= IEEE80211_TX_INTFL_NEED_TXPROCESSING;
	FUNC4(sdata, skb);
	FUNC14(&mpath->frame_queue, skb);
	err = -ENOENT;
	if (skb_to_free)
		FUNC7(sdata, skb_to_free);

endlookup:
	FUNC11();
	return err;
}