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
struct sk_buff {int /*<<< orphan*/  truesize; scalar_t__ sk; } ;
struct rfcomm_dev {int /*<<< orphan*/  wakeup_task; int /*<<< orphan*/  flags; int /*<<< orphan*/  wmem_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFCOMM_TTY_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb)
{
	struct rfcomm_dev *dev = (void *) skb->sk;
	FUNC0(skb->truesize, &dev->wmem_alloc);
	if (FUNC3(RFCOMM_TTY_ATTACHED, &dev->flags))
		FUNC2(&dev->wakeup_task);
	FUNC1(dev);
}