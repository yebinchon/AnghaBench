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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_multicast_group {int /*<<< orphan*/  name; int /*<<< orphan*/  id; TYPE_1__* family; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_ATTR_FAMILY_ID ; 
 int /*<<< orphan*/  CTRL_ATTR_FAMILY_NAME ; 
 int CTRL_ATTR_MCAST_GROUPS ; 
 int /*<<< orphan*/  CTRL_ATTR_MCAST_GRP_ID ; 
 int /*<<< orphan*/  CTRL_ATTR_MCAST_GRP_NAME ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  genl_ctrl ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 int FUNC4 (struct sk_buff*,void*) ; 
 void* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC8(struct genl_multicast_group *grp, u32 pid,
				u32 seq, u32 flags, struct sk_buff *skb,
				u8 cmd)
{
	void *hdr;
	struct nlattr *nla_grps;
	struct nlattr *nest;

	hdr = FUNC5(skb, pid, seq, &genl_ctrl, flags, cmd);
	if (hdr == NULL)
		return -1;

	FUNC0(skb, CTRL_ATTR_FAMILY_NAME, grp->family->name);
	FUNC1(skb, CTRL_ATTR_FAMILY_ID, grp->family->id);

	nla_grps = FUNC7(skb, CTRL_ATTR_MCAST_GROUPS);
	if (nla_grps == NULL)
		goto nla_put_failure;

	nest = FUNC7(skb, 1);
	if (nest == NULL)
		goto nla_put_failure;

	FUNC2(skb, CTRL_ATTR_MCAST_GRP_ID, grp->id);
	FUNC0(skb, CTRL_ATTR_MCAST_GRP_NAME,
		       grp->name);

	FUNC6(skb, nest);
	FUNC6(skb, nla_grps);

	return FUNC4(skb, hdr);

nla_put_failure:
	FUNC3(skb, hdr);
	return -EMSGSIZE;
}