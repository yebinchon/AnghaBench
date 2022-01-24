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
struct xfrm_policy {int dummy; } ;
struct xfrm_dump_info {scalar_t__ nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; struct sk_buff* out_skb; struct sk_buff* in_skb; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 scalar_t__ FUNC1 (struct xfrm_policy*,int,int /*<<< orphan*/ ,struct xfrm_dump_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct sk_buff *in_skb,
					  struct xfrm_policy *xp,
					  int dir, u32 seq)
{
	struct xfrm_dump_info info;
	struct sk_buff *skb;

	skb = FUNC3(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!skb)
		return FUNC0(-ENOMEM);

	info.in_skb = in_skb;
	info.out_skb = skb;
	info.nlmsg_seq = seq;
	info.nlmsg_flags = 0;

	if (FUNC1(xp, dir, 0, &info) < 0) {
		FUNC2(skb);
		return NULL;
	}

	return skb;
}