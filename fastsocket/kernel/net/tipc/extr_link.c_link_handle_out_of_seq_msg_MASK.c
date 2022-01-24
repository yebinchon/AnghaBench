#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  duplicates; int /*<<< orphan*/  deferred_recv; } ;
struct link {int deferred_inqueue_sz; TYPE_1__ stats; int /*<<< orphan*/  newest_deferred_in; int /*<<< orphan*/  oldest_deferred_in; int /*<<< orphan*/  next_in_no; int /*<<< orphan*/  checkpoint; } ;

/* Variables and functions */
 scalar_t__ LINK_PROTOCOL ; 
 int /*<<< orphan*/  STATE_MSG ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct link*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct link*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct link *l_ptr,
				       struct sk_buff *buf)
{
	u32 seq_no = FUNC7(FUNC1(buf));

	if (FUNC4(FUNC8(FUNC1(buf)) == LINK_PROTOCOL)) {
		FUNC5(l_ptr, buf);
		return;
	}

	FUNC2("rx OOS msg: seq_no %u, expecting %u (%u)\n",
	    seq_no, FUNC6(l_ptr->next_in_no), l_ptr->next_in_no);

	/* Record OOS packet arrival (force mismatch on next timeout) */

	l_ptr->checkpoint--;

	/*
	 * Discard packet if a duplicate; otherwise add it to deferred queue
	 * and notify peer of gap as per protocol specification
	 */

	if (FUNC3(seq_no, FUNC6(l_ptr->next_in_no))) {
		l_ptr->stats.duplicates++;
		FUNC0(buf);
		return;
	}

	if (FUNC9(&l_ptr->oldest_deferred_in,
				&l_ptr->newest_deferred_in, buf)) {
		l_ptr->deferred_inqueue_sz++;
		l_ptr->stats.deferred_recv++;
		if ((l_ptr->deferred_inqueue_sz % 16) == 1)
			FUNC10(l_ptr, STATE_MSG, 0, 0, 0, 0, 0);
	} else
		l_ptr->stats.duplicates++;
}