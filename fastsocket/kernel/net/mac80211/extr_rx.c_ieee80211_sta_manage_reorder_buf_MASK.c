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
typedef  int u16 ;
struct tid_ampdu_rx {int buf_size; int head_seq_num; int ssn; scalar_t__ stored_mpdu_num; int /*<<< orphan*/  reorder_lock; int /*<<< orphan*/ * reorder_time; struct sk_buff** reorder_buf; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  seq_ctrl; } ;

/* Variables and functions */
 int IEEE80211_SCTL_SEQ ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,struct tid_ampdu_rx*,int,struct sk_buff_head*) ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,struct tid_ampdu_rx*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC9(struct ieee80211_sub_if_data *sdata,
					     struct tid_ampdu_rx *tid_agg_rx,
					     struct sk_buff *skb,
					     struct sk_buff_head *frames)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
	u16 sc = FUNC6(hdr->seq_ctrl);
	u16 mpdu_seq_num = (sc & IEEE80211_SCTL_SEQ) >> 4;
	u16 head_seq_num, buf_size;
	int index;
	bool ret = true;

	FUNC7(&tid_agg_rx->reorder_lock);

	buf_size = tid_agg_rx->buf_size;
	head_seq_num = tid_agg_rx->head_seq_num;

	/* frame with out of date sequence number */
	if (FUNC3(mpdu_seq_num, head_seq_num)) {
		FUNC0(skb);
		goto out;
	}

	/*
	 * If frame the sequence number exceeds our buffering window
	 * size release some previous frames to make room for this one.
	 */
	if (!FUNC3(mpdu_seq_num, head_seq_num + buf_size)) {
		head_seq_num = FUNC2(
				FUNC4(mpdu_seq_num, buf_size));
		/* release stored frames up to new head to stack */
		FUNC1(sdata, tid_agg_rx,
						 head_seq_num, frames);
	}

	/* Now the new frame is always in the range of the reordering buffer */

	index = FUNC4(mpdu_seq_num,
				 tid_agg_rx->ssn) % tid_agg_rx->buf_size;

	/* check if we already stored this frame */
	if (tid_agg_rx->reorder_buf[index]) {
		FUNC0(skb);
		goto out;
	}

	/*
	 * If the current MPDU is in the right order and nothing else
	 * is stored we can process it directly, no need to buffer it.
	 * If it is first but there's something stored, we may be able
	 * to release frames after this one.
	 */
	if (mpdu_seq_num == tid_agg_rx->head_seq_num &&
	    tid_agg_rx->stored_mpdu_num == 0) {
		tid_agg_rx->head_seq_num =
			FUNC2(tid_agg_rx->head_seq_num);
		ret = false;
		goto out;
	}

	/* put the frame in the reordering buffer */
	tid_agg_rx->reorder_buf[index] = skb;
	tid_agg_rx->reorder_time[index] = jiffies;
	tid_agg_rx->stored_mpdu_num++;
	FUNC5(sdata, tid_agg_rx, frames);

 out:
	FUNC8(&tid_agg_rx->reorder_lock);
	return ret;
}