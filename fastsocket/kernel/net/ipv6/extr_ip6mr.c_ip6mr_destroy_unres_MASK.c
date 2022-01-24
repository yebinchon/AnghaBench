#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_len; int /*<<< orphan*/  nlmsg_type; } ;
struct nlmsgerr {int /*<<< orphan*/  error; } ;
struct TYPE_6__ {int /*<<< orphan*/  cache_resolve_queue_len; } ;
struct net {TYPE_1__ ipv6; } ;
struct TYPE_7__ {int /*<<< orphan*/  unresolved; } ;
struct TYPE_8__ {TYPE_2__ unres; } ;
struct mfc6_cache {TYPE_3__ mfc_un; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  pid; } ;
struct TYPE_9__ {scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 TYPE_5__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  NLMSG_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mfc6_cache*) ; 
 TYPE_4__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct net* FUNC7 (struct mfc6_cache*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct mfc6_cache *c)
{
	struct sk_buff *skb;
	struct net *net = FUNC7(c);

	FUNC3(&net->ipv6.cache_resolve_queue_len);

	while((skb = FUNC9(&c->mfc_un.unres.unresolved)) != NULL) {
		if (FUNC5(skb)->version == 0) {
			struct nlmsghdr *nlh = (struct nlmsghdr *)FUNC10(skb, sizeof(struct ipv6hdr));
			nlh->nlmsg_type = NLMSG_ERROR;
			nlh->nlmsg_len = FUNC2(sizeof(struct nlmsgerr));
			FUNC11(skb, nlh->nlmsg_len);
			((struct nlmsgerr *)FUNC1(nlh))->error = -ETIMEDOUT;
			FUNC8(skb, net, FUNC0(skb).pid);
		} else
			FUNC6(skb);
	}

	FUNC4(c);
}