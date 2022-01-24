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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ipv6_txoptions {int /*<<< orphan*/  tot_len; } ;
struct ipv6_pinfo {int /*<<< orphan*/  opt; int /*<<< orphan*/  pktoptions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct ipv6_pinfo* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct ipv6_txoptions*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct sock *sk)
{
	struct ipv6_pinfo *np = FUNC1(sk);
	struct sk_buff *skb;
	struct ipv6_txoptions *opt;

	/* Release rx options */

	if ((skb = FUNC4(&np->pktoptions, NULL)) != NULL)
		FUNC2(skb);

	/* Free flowlabels */
	FUNC0(sk);

	/* Free tx options */

	if ((opt = FUNC4(&np->opt, NULL)) != NULL)
		FUNC3(sk, opt, opt->tot_len);
}