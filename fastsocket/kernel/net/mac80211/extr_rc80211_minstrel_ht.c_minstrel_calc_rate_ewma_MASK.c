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
struct minstrel_rate_stats {scalar_t__ attempts; scalar_t__ att_hist; scalar_t__ last_attempts; scalar_t__ success; scalar_t__ last_success; scalar_t__ sample_skipped; int /*<<< orphan*/  succ_hist; int /*<<< orphan*/  cur_prob; int /*<<< orphan*/  probability; } ;

/* Variables and functions */
 int /*<<< orphan*/  EWMA_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct minstrel_rate_stats *mr)
{
	if (FUNC2(mr->attempts > 0)) {
		mr->sample_skipped = 0;
		mr->cur_prob = FUNC0(mr->success, mr->attempts);
		if (!mr->att_hist)
			mr->probability = mr->cur_prob;
		else
			mr->probability = FUNC1(mr->probability,
				mr->cur_prob, EWMA_LEVEL);
		mr->att_hist += mr->attempts;
		mr->succ_hist += mr->success;
	} else {
		mr->sample_skipped++;
	}
	mr->last_success = mr->success;
	mr->last_attempts = mr->attempts;
	mr->success = 0;
	mr->attempts = 0;
}