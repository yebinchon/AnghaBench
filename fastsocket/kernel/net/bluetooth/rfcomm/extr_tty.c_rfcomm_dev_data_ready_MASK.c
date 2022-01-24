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
struct tty_struct {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct rfcomm_dlc {struct rfcomm_dev* owner; } ;
struct rfcomm_dev {int /*<<< orphan*/  pending; struct tty_struct* tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rfcomm_dlc *dlc, struct sk_buff *skb)
{
	struct rfcomm_dev *dev = dlc->owner;
	struct tty_struct *tty;

	if (!dev) {
		FUNC1(skb);
		return;
	}

	if (!(tty = dev->tty) || !FUNC2(&dev->pending)) {
		FUNC3(&dev->pending, skb);
		return;
	}

	FUNC0("dlc %p tty %p len %d", dlc, tty, skb->len);

	FUNC5(tty, skb->data, skb->len);
	FUNC4(tty);

	FUNC1(skb);
}