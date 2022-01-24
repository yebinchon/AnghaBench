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
struct sk_buff {int /*<<< orphan*/  destructor; void* sk; int /*<<< orphan*/  truesize; } ;
struct rfcomm_dev {int /*<<< orphan*/  wmem_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/  rfcomm_wfree ; 

__attribute__((used)) static inline void FUNC2(struct sk_buff *skb, struct rfcomm_dev *dev)
{
	FUNC1(dev);
	FUNC0(skb->truesize, &dev->wmem_alloc);
	skb->sk = (void *) dev;
	skb->destructor = rfcomm_wfree;
}