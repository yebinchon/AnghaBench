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
struct sock {int /*<<< orphan*/  sk_filter; } ;
struct sk_filter {int /*<<< orphan*/  len; int /*<<< orphan*/  insns; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int FUNC0 (struct sk_buff*,unsigned int) ; 
 struct sk_filter* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct sock*,struct sk_buff*) ; 
 unsigned int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct sock *sk, struct sk_buff *skb)
{
	int err;
	struct sk_filter *filter;

	err = FUNC4(sk, skb);
	if (err)
		return err;

	FUNC2();
	filter = FUNC1(sk->sk_filter);
	if (filter) {
		unsigned int pkt_len = FUNC5(skb, filter->insns,
				filter->len);
		err = pkt_len ? FUNC0(skb, pkt_len) : -EPERM;
	}
	FUNC3();

	return err;
}