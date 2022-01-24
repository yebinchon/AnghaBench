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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct genl_multicast_group {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC1 (struct genl_multicast_group*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct genl_multicast_group *grp,
					    u32 pid, int seq, u8 cmd)
{
	struct sk_buff *skb;
	int err;

	skb = FUNC3(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (skb == NULL)
		return FUNC0(-ENOBUFS);

	err = FUNC1(grp, pid, seq, 0, skb, cmd);
	if (err < 0) {
		FUNC2(skb);
		return FUNC0(err);
	}

	return skb;
}