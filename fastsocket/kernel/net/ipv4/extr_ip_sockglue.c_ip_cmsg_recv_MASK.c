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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct msghdr {int dummy; } ;
struct inet_sock {unsigned int cmsg_flags; } ;

/* Variables and functions */
 struct inet_sock* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct msghdr*,struct sk_buff*) ; 

void FUNC8(struct msghdr *msg, struct sk_buff *skb)
{
	struct inet_sock *inet = FUNC0(skb->sk);
	unsigned flags = inet->cmsg_flags;

	/* Ordered by supposed usage frequency */
	if (flags & 1)
		FUNC3(msg, skb);
	if ((flags >>= 1) == 0)
		return;

	if (flags & 1)
		FUNC7(msg, skb);
	if ((flags >>= 1) == 0)
		return;

	if (flags & 1)
		FUNC6(msg, skb);
	if ((flags >>= 1) == 0)
		return;

	if (flags & 1)
		FUNC2(msg, skb);
	if ((flags >>= 1) == 0)
		return;

	if (flags & 1)
		FUNC4(msg, skb);
	if ((flags >>= 1) == 0)
		return;

	if (flags & 1)
		FUNC5(msg, skb);

	if ((flags >>= 1) == 0)
		return;
	if (flags & 1)
		FUNC1(msg, skb);

}