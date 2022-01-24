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
struct sock {scalar_t__ sk_sndbuf; int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct sk_buff* FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sock*) ; 

struct sk_buff *FUNC3(struct sock *sk, unsigned long size, int force,
			     gfp_t priority)
{
	if (force || FUNC1(&sk->sk_wmem_alloc) < sk->sk_sndbuf) {
		struct sk_buff *skb = FUNC0(size, priority);
		if (skb) {
			FUNC2(skb, sk);
			return skb;
		}
	}
	return NULL;
}