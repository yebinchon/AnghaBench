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
struct per_cpu_dm_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  skb; int /*<<< orphan*/  send_timer; } ;
struct nlattr {int dummy; } ;
struct net_dm_drop_point {int dummy; } ;
struct net_dm_alert_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  NET_DM_CMD_ALERT ; 
 int /*<<< orphan*/  NLA_UNSPEC ; 
 int dm_hit_limit ; 
 struct sk_buff* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct net_dm_alert_msg*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  net_drop_monitor_family ; 
 struct net_dm_alert_msg* FUNC4 (struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct per_cpu_dm_data *data)
{
	size_t al;
	struct net_dm_alert_msg *msg;
	struct nlattr *nla;
	struct sk_buff *skb;
	unsigned long flags;

	al = sizeof(struct net_dm_alert_msg);
	al += dm_hit_limit * sizeof(struct net_dm_drop_point);
	al += sizeof(struct nlattr);

	skb = FUNC0(al, GFP_KERNEL);

	if (skb) {
		FUNC1(skb, 0, 0, &net_drop_monitor_family,
				0, NET_DM_CMD_ALERT);
		nla = FUNC5(skb, NLA_UNSPEC,
				  sizeof(struct net_dm_alert_msg));
		msg = FUNC4(nla);
		FUNC2(msg, 0, al);
	} else {
		FUNC3(&data->send_timer, jiffies + HZ / 10);
	}

	FUNC6(&data->lock, flags);
	FUNC8(data->skb, skb);
	FUNC7(&data->lock, flags);

	return skb;
}