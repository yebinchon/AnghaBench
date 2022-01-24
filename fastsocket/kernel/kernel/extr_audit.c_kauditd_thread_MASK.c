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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  audit_backlog_wait ; 
 scalar_t__ audit_default ; 
 scalar_t__ audit_pid ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  audit_skb_hold_queue ; 
 int /*<<< orphan*/  audit_skb_queue ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  kauditd_wait ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(void *dummy)
{
	struct sk_buff *skb;

	FUNC9();
	while (!FUNC5()) {
		/*
		 * if auditd just started drain the queue of messages already
		 * sent to syslog/printk.  remember loss here is ok.  we already
		 * called audit_log_lost() if it didn't go out normally.  so the
		 * race between the skb_dequeue and the next check for audit_pid
		 * doesn't matter.
		 *
		 * if you ever find kauditd to be too slow we can get a perf win
		 * by doing our own locking and keeping better track if there
		 * are messages in this queue.  I don't see the need now, but
		 * in 5 years when I want to play with this again I'll see this
		 * note and still have no friggin idea what i'm thinking today.
		 */
		if (audit_default && audit_pid) {
			skb = FUNC10(&audit_skb_hold_queue);
			if (FUNC13(skb)) {
				while (skb && audit_pid) {
					FUNC4(skb);
					skb = FUNC10(&audit_skb_hold_queue);
				}
			}
		}

		skb = FUNC10(&audit_skb_queue);
		FUNC14(&audit_backlog_wait);
		if (skb) {
			if (audit_pid)
				FUNC4(skb);
			else
				FUNC3(skb);
		} else {
			FUNC0(wait, current);
			FUNC8(TASK_INTERRUPTIBLE);
			FUNC2(&kauditd_wait, &wait);

			if (!FUNC11(&audit_skb_queue)) {
				FUNC12();
				FUNC7();
			}

			FUNC1(TASK_RUNNING);
			FUNC6(&kauditd_wait, &wait);
		}
	}
	return 0;
}