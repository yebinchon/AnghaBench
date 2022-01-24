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
struct sock {int /*<<< orphan*/  sk_drops; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, struct sk_buff *skb)
{
	int err = FUNC2(sk, skb);
	if (err < 0) {
		FUNC1(skb);
		if (err == -ENOMEM)
			FUNC0(&sk->sk_drops);
	}
	return err ? NET_RX_DROP : NET_RX_SUCCESS;
}