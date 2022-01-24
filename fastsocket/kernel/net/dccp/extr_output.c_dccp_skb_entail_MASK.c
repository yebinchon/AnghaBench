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
struct sock {struct sk_buff* sk_send_head; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct sock*) ; 

__attribute__((used)) static void FUNC2(struct sock *sk, struct sk_buff *skb)
{
	FUNC1(skb, sk);
	FUNC0(sk->sk_send_head);
	sk->sk_send_head = skb;
}