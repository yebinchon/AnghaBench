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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*,int /*<<< orphan*/ ,struct Qdisc*,struct Qdisc*) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *skb, struct nlmsghdr *n, u32 clid,
			       struct Qdisc *old, struct Qdisc *new)
{
	if (new || old)
		FUNC1(skb, n, clid, old, new);

	if (old)
		FUNC0(old);
}