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
struct sock {int /*<<< orphan*/  sk_drops; scalar_t__ sk_filter; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ checksum; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC5(struct sock * sk, struct sk_buff * skb)
{
	if ((FUNC2(sk)->checksum || sk->sk_filter) &&
	    FUNC3(skb)) {
		FUNC0(&sk->sk_drops);
		FUNC1(skb);
		return NET_RX_DROP;
	}

	/* Charge it to the socket. */
	if (FUNC4(sk,skb)<0) {
		FUNC0(&sk->sk_drops);
		FUNC1(skb);
		return NET_RX_DROP;
	}

	return 0;
}