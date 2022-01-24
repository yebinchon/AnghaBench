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
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int dummy; } ;
struct netlink_callback {scalar_t__* args; int /*<<< orphan*/  skb; } ;
typedef  scalar_t__ ip_set_id_t ;

/* Variables and functions */
 scalar_t__ DUMP_ALL ; 
 scalar_t__ DUMP_ONE ; 
 int ENOENT ; 
 int /*<<< orphan*/  IPSET_ATTR_CMD_MAX ; 
 size_t IPSET_ATTR_SETNAME ; 
 scalar_t__ IPSET_INVALID_ID ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_set_setname_policy ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct netlink_callback *cb)
{
	struct nlmsghdr *nlh = FUNC4(cb->skb);
	int min_len = FUNC0(sizeof(struct nfgenmsg));
	struct nlattr *cda[IPSET_ATTR_CMD_MAX+1];
	struct nlattr *attr = (void *)nlh + min_len;
	ip_set_id_t index;

	/* Second pass, so parser can't fail */
	FUNC3(cda, IPSET_ATTR_CMD_MAX,
		  attr, nlh->nlmsg_len - min_len, ip_set_setname_policy);

	/* cb->args[0] : dump single set/all sets
	 *         [1] : set index
	 *         [..]: type specific
	 */

	if (!cda[IPSET_ATTR_SETNAME]) {
		cb->args[0] = DUMP_ALL;
		return 0;
	}

	index = FUNC1(FUNC2(cda[IPSET_ATTR_SETNAME]));
	if (index == IPSET_INVALID_ID)
		return -ENOENT;

	cb->args[0] = DUMP_ONE;
	cb->args[1] = index;
	return 0;
}