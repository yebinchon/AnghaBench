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
struct sk_buff {scalar_t__ len; } ;
struct nf_conn_counter {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* function ) (unsigned long) ;} ;
struct nf_conn {TYPE_1__ timeout; int /*<<< orphan*/  lock; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 struct nf_conn_counter* FUNC2 (struct nf_conn*) ; 
 scalar_t__ FUNC3 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

bool FUNC7(struct nf_conn *ct,
		       enum ip_conntrack_info ctinfo,
		       const struct sk_buff *skb,
		       int do_acct)
{
	if (do_acct) {
		struct nf_conn_counter *acct;

		acct = FUNC2(ct);
		if (acct) {
			FUNC4(&ct->lock);
			acct[FUNC0(ctinfo)].packets++;
			acct[FUNC0(ctinfo)].bytes +=
				skb->len - FUNC3(skb);
			FUNC5(&ct->lock);
		}
	}

	if (FUNC1(&ct->timeout)) {
		ct->timeout.function((unsigned long)ct);
		return true;
	}
	return false;
}