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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPRCVCOLLAPSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct sock *sk, struct sk_buff *skb,
					struct sk_buff_head *list)
{
	struct sk_buff *next = NULL;

	if (!FUNC3(list, skb))
		next = FUNC4(list, skb);

	FUNC2(skb, list);
	FUNC1(skb);
	FUNC0(FUNC5(sk), LINUX_MIB_TCPRCVCOLLAPSED);

	return next;
}