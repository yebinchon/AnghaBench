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
struct wimax_dev {int dummy; } ;
struct sk_buff {size_t len; void* data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct device* FUNC4 (struct wimax_dev*) ; 
 TYPE_1__ wimax_gnl_mcg ; 

int FUNC5(struct wimax_dev *wimax_dev, struct sk_buff *skb)
{
	struct device *dev = FUNC4(wimax_dev);
	void *msg = skb->data;
	size_t size = skb->len;
	FUNC3();

	FUNC1(1, dev, "CTX: wimax msg, %zu bytes\n", size);
	FUNC0(2, dev, msg, size);
	FUNC2(skb, 0, wimax_gnl_mcg.id, GFP_KERNEL);
	FUNC1(1, dev, "CTX: genl multicast done\n");
	return 0;
}