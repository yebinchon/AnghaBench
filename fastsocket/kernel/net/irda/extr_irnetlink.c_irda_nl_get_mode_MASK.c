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
struct net_device {int /*<<< orphan*/  name; scalar_t__ atalk_ptr; } ;
struct irlap_cb {int /*<<< orphan*/  mode; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRDA_NL_ATTR_IFNAME ; 
 int /*<<< orphan*/  IRDA_NL_ATTR_MODE ; 
 int /*<<< orphan*/  IRDA_NL_CMD_GET_MODE ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 struct net_device* FUNC4 (int /*<<< orphan*/ *,struct genl_info*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  irda_nl_family ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	struct net_device * dev;
	struct irlap_cb * irlap;
	struct sk_buff *msg;
	void *hdr;
	int ret = -ENOBUFS;

	dev = FUNC4(&init_net, info);
	if (!dev)
		return -ENODEV;

	msg = FUNC8(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		FUNC0(dev);
		return -ENOMEM;
	}

	irlap = (struct irlap_cb *)dev->atalk_ptr;
	if (!irlap) {
		ret = -ENODEV;
		goto err_out;
	}

	hdr = FUNC2(msg, info->snd_pid, info->snd_seq,
			  &irda_nl_family, 0,  IRDA_NL_CMD_GET_MODE);
	if (hdr == NULL) {
		ret = -EMSGSIZE;
		goto err_out;
	}

	if(FUNC5(msg, IRDA_NL_ATTR_IFNAME,
			  dev->name))
		goto err_out;

	if(FUNC6(msg, IRDA_NL_ATTR_MODE, irlap->mode))
		goto err_out;

	FUNC1(msg, hdr);

	return FUNC3(msg, info);

 err_out:
	FUNC7(msg);
	FUNC0(dev);

	return ret;
}