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
struct lapb_cb {int dummy; } ;

/* Variables and functions */
 int LAPB_BADTOKEN ; 
 int LAPB_OK ; 
 int /*<<< orphan*/  FUNC0 (struct lapb_cb*,struct sk_buff*) ; 
 struct lapb_cb* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct lapb_cb*) ; 

int FUNC3(struct net_device *dev, struct sk_buff *skb)
{
	struct lapb_cb *lapb = FUNC1(dev);
	int rc = LAPB_BADTOKEN;

	if (lapb) {
		FUNC0(lapb, skb);
		FUNC2(lapb);
		rc = LAPB_OK;
	}

	return rc;
}