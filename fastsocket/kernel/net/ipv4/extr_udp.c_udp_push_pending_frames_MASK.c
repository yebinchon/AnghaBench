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
struct udp_sock {scalar_t__ pending; scalar_t__ len; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct flowi {int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  fl4_dst; } ;
struct TYPE_2__ {struct flowi fl; } ;
struct inet_sock {TYPE_1__ cork; } ;

/* Variables and functions */
 struct inet_sock* FUNC0 (struct sock*) ; 
 struct sk_buff* FUNC1 (struct sock*) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct udp_sock* FUNC3 (struct sock*) ; 

int FUNC4(struct sock *sk)
{
	struct udp_sock  *up = FUNC3(sk);
	struct inet_sock *inet = FUNC0(sk);
	struct flowi *fl = &inet->cork.fl;
	struct sk_buff *skb;
	int err = 0;

	skb = FUNC1(sk);
	if (!skb)
		goto out;

	err = FUNC2(skb, fl->fl4_dst, fl->fl_ip_dport);

out:
	up->len = 0;
	up->pending = 0;
	return err;
}