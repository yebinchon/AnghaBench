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
struct sock {TYPE_1__* sk_prot; } ;
struct sk_buff {int /*<<< orphan*/  truesize; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* enter_memory_pressure ) (struct sock*) ;scalar_t__ max_header; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  SOCK_SKB_POOL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

struct sk_buff *FUNC10(struct sock *sk, int size, gfp_t gfp)
{
	struct sk_buff *skb;

	/* The TCP header must be at least 32-bit aligned.  */
	size = FUNC0(size, 4);

	if (FUNC8(sk, SOCK_SKB_POOL))
		skb = FUNC2(size + sk->sk_prot->max_header, gfp);
	else
		skb = FUNC3(size + sk->sk_prot->max_header, gfp);
	if (skb) {
		if (FUNC5(sk, skb->truesize)) {
			/*
			 * Make sure that we have exactly size bytes
			 * available to the caller, no more, no less.
			 */
			FUNC6(skb, FUNC7(skb) - size);
			return skb;
		}
		FUNC1(skb);
	} else {
		sk->sk_prot->enter_memory_pressure(sk);
		FUNC4(sk);
	}
	return NULL;
}