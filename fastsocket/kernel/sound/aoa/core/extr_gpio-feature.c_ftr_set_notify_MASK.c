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
struct gpio_notification {scalar_t__ notify; void* data; int /*<<< orphan*/  mutex; } ;
struct gpio_runtime {struct gpio_notification line_out_notify; struct gpio_notification line_in_notify; struct gpio_notification headphone_notify; } ;
typedef  scalar_t__ notify_func_t ;
typedef  enum notify_type { ____Placeholder_notify_type } notify_type ;

/* Variables and functions */
#define  AOA_NOTIFY_HEADPHONE 130 
#define  AOA_NOTIFY_LINE_IN 129 
#define  AOA_NOTIFY_LINE_OUT 128 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int NO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int,struct gpio_notification*) ; 
 int /*<<< orphan*/  ftr_handle_notify_irq ; 
 int headphone_detect_irq ; 
 int linein_detect_irq ; 
 int lineout_detect_irq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct gpio_notification*) ; 

__attribute__((used)) static int FUNC4(struct gpio_runtime *rt,
			  enum notify_type type,
			  notify_func_t notify,
			  void *data)
{
	struct gpio_notification *notif;
	notify_func_t old;
	int irq;
	char *name;
	int err = -EBUSY;

	switch (type) {
	case AOA_NOTIFY_HEADPHONE:
		notif = &rt->headphone_notify;
		name = "headphone-detect";
		irq = headphone_detect_irq;
		break;
	case AOA_NOTIFY_LINE_IN:
		notif = &rt->line_in_notify;
		name = "linein-detect";
		irq = linein_detect_irq;
		break;
	case AOA_NOTIFY_LINE_OUT:
		notif = &rt->line_out_notify;
		name = "lineout-detect";
		irq = lineout_detect_irq;
		break;
	default:
		return -EINVAL;
	}

	if (irq == NO_IRQ)
		return -ENODEV;

	FUNC1(&notif->mutex);

	old = notif->notify;

	if (!old && !notify) {
		err = 0;
		goto out_unlock;
	}

	if (old && notify) {
		if (old == notify && notif->data == data)
			err = 0;
		goto out_unlock;
	}

	if (old && !notify)
		FUNC0(irq, notif);

	if (!old && notify) {
		err = FUNC3(irq, ftr_handle_notify_irq, 0, name, notif);
		if (err)
			goto out_unlock;
	}

	notif->notify = notify;
	notif->data = data;

	err = 0;
 out_unlock:
	FUNC2(&notif->mutex);
	return err;
}