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
struct rfcomm_dev {int /*<<< orphan*/  dlc; int /*<<< orphan*/  wmem_alloc; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct sk_buff* FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct rfcomm_dev*) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct rfcomm_dev *dev, unsigned long size, gfp_t priority)
{
	if (FUNC1(&dev->wmem_alloc) < FUNC2(dev->dlc)) {
		struct sk_buff *skb = FUNC0(size, priority);
		if (skb) {
			FUNC3(skb, dev);
			return skb;
		}
	}
	return NULL;
}