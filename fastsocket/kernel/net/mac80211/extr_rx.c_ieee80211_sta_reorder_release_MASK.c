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
struct tid_ampdu_rx {int head_seq_num; int buf_size; int /*<<< orphan*/  reorder_timer; scalar_t__* reorder_time; scalar_t__* reorder_buf; int /*<<< orphan*/  ssn; scalar_t__ stored_mpdu_num; int /*<<< orphan*/  reorder_lock; } ;
struct sk_buff_head {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ HT_RX_REORDER_BUF_TIMEOUT ; 
 int IEEE80211_SN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,struct tid_ampdu_rx*,int,struct sk_buff_head*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_sub_if_data *sdata,
					  struct tid_ampdu_rx *tid_agg_rx,
					  struct sk_buff_head *frames)
{
	int index, j;

	FUNC4(&tid_agg_rx->reorder_lock);

	/* release the buffer until next missing frame */
	index = FUNC3(tid_agg_rx->head_seq_num,
				 tid_agg_rx->ssn) % tid_agg_rx->buf_size;
	if (!tid_agg_rx->reorder_buf[index] &&
	    tid_agg_rx->stored_mpdu_num) {
		/*
		 * No buffers ready to be released, but check whether any
		 * frames in the reorder buffer have timed out.
		 */
		int skipped = 1;
		for (j = (index + 1) % tid_agg_rx->buf_size; j != index;
		     j = (j + 1) % tid_agg_rx->buf_size) {
			if (!tid_agg_rx->reorder_buf[j]) {
				skipped++;
				continue;
			}
			if (skipped &&
			    !FUNC6(jiffies, tid_agg_rx->reorder_time[j] +
					HT_RX_REORDER_BUF_TIMEOUT))
				goto set_release_timer;

			FUNC1(sdata,
					   "release an RX reorder frame due to timeout on earlier frames\n");
			FUNC2(sdata, tid_agg_rx, j,
							frames);

			/*
			 * Increment the head seq# also for the skipped slots.
			 */
			tid_agg_rx->head_seq_num =
				(tid_agg_rx->head_seq_num +
				 skipped) & IEEE80211_SN_MASK;
			skipped = 0;
		}
	} else while (tid_agg_rx->reorder_buf[index]) {
		FUNC2(sdata, tid_agg_rx, index,
						frames);
		index =	FUNC3(tid_agg_rx->head_seq_num,
					 tid_agg_rx->ssn) %
							tid_agg_rx->buf_size;
	}

	if (tid_agg_rx->stored_mpdu_num) {
		j = index = FUNC3(tid_agg_rx->head_seq_num,
					     tid_agg_rx->ssn) %
							tid_agg_rx->buf_size;

		for (; j != (index - 1) % tid_agg_rx->buf_size;
		     j = (j + 1) % tid_agg_rx->buf_size) {
			if (tid_agg_rx->reorder_buf[j])
				break;
		}

 set_release_timer:

		FUNC5(&tid_agg_rx->reorder_timer,
			  tid_agg_rx->reorder_time[j] + 1 +
			  HT_RX_REORDER_BUF_TIMEOUT);
	} else {
		FUNC0(&tid_agg_rx->reorder_timer);
	}
}