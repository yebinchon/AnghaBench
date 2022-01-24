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
struct tid_ampdu_rx {int /*<<< orphan*/  head_seq_num; struct sk_buff** reorder_buf; int /*<<< orphan*/  stored_mpdu_num; int /*<<< orphan*/  reorder_lock; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_rx_status {int /*<<< orphan*/  rx_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_RX_DEFERRED_RELEASE ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_sub_if_data *sdata,
					    struct tid_ampdu_rx *tid_agg_rx,
					    int index,
					    struct sk_buff_head *frames)
{
	struct sk_buff *skb = tid_agg_rx->reorder_buf[index];
	struct ieee80211_rx_status *status;

	FUNC3(&tid_agg_rx->reorder_lock);

	if (!skb)
		goto no_frame;

	/* release the frame from the reorder ring buffer */
	tid_agg_rx->stored_mpdu_num--;
	tid_agg_rx->reorder_buf[index] = NULL;
	status = FUNC0(skb);
	status->rx_flags |= IEEE80211_RX_DEFERRED_RELEASE;
	FUNC1(frames, skb);

no_frame:
	tid_agg_rx->head_seq_num = FUNC2(tid_agg_rx->head_seq_num);
}