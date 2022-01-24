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
struct sk_buff {scalar_t__ data; } ;
struct nlmsghdr {int dummy; } ;
struct genlmsghdr {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct genlmsghdr*) ; 
 int FUNC1 (struct sk_buff*,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  listener_nlpid ; 
 struct genlmsghdr* FUNC3 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb)
{
	struct genlmsghdr *genlhdr = FUNC3((struct nlmsghdr *)skb->data);
	void *data = FUNC0(genlhdr);
	int rv;

	rv = FUNC1(skb, data);
	if (rv < 0) {
		FUNC4(skb);
		return rv;
	}

	return FUNC2(&init_net, skb, listener_nlpid);
}