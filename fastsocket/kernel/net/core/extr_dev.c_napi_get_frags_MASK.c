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
struct net_device {int dummy; } ;
struct napi_struct {struct sk_buff* skb; struct net_device* dev; } ;

/* Variables and functions */
 scalar_t__ GRO_MAX_HEAD ; 
 scalar_t__ NET_IP_ALIGN ; 
 struct sk_buff* FUNC0 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 

struct sk_buff *FUNC2(struct napi_struct *napi)
{
	struct net_device *dev = napi->dev;
	struct sk_buff *skb = napi->skb;

	if (!skb) {
		skb = FUNC0(dev, GRO_MAX_HEAD + NET_IP_ALIGN);
		if (!skb)
			goto out;

		FUNC1(skb, NET_IP_ALIGN);

		napi->skb = skb;
	}

out:
	return skb;
}