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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPVS_CMD_ATTR_DAEMON ; 
 int /*<<< orphan*/  IPVS_DAEMON_ATTR_MCAST_IFN ; 
 int /*<<< orphan*/  IPVS_DAEMON_ATTR_STATE ; 
 int /*<<< orphan*/  IPVS_DAEMON_ATTR_SYNC_ID ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, __be32 state,
				  const char *mcast_ifn, __be32 syncid)
{
	struct nlattr *nl_daemon;

	nl_daemon = FUNC4(skb, IPVS_CMD_ATTR_DAEMON);
	if (!nl_daemon)
		return -EMSGSIZE;

	FUNC1(skb, IPVS_DAEMON_ATTR_STATE, state);
	FUNC0(skb, IPVS_DAEMON_ATTR_MCAST_IFN, mcast_ifn);
	FUNC1(skb, IPVS_DAEMON_ATTR_SYNC_ID, syncid);

	FUNC3(skb, nl_daemon);

	return 0;

nla_put_failure:
	FUNC2(skb, nl_daemon);
	return -EMSGSIZE;
}