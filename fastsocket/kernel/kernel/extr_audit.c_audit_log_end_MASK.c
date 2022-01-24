#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct audit_buffer {TYPE_1__* skb; } ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ audit_pid ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  audit_skb_queue ; 
 int /*<<< orphan*/  kauditd_wait ; 
 struct nlmsghdr* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct audit_buffer *ab)
{
	if (!ab)
		return;
	if (!FUNC4()) {
		FUNC2("rate limit exceeded");
	} else {
		struct nlmsghdr *nlh = FUNC5(ab->skb);
		nlh->nlmsg_len = ab->skb->len - FUNC0(0);

		if (audit_pid) {
			FUNC6(&audit_skb_queue, ab->skb);
			FUNC7(&kauditd_wait);
		} else {
			FUNC3(ab->skb);
		}
		ab->skb = NULL;
	}
	FUNC1(ab);
}