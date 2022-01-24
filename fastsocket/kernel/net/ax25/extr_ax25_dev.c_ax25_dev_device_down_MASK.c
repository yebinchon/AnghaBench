#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/ * ax25_ptr; } ;
struct TYPE_6__ {struct TYPE_6__* next; struct net_device* forward; } ;
typedef  TYPE_1__ ax25_dev ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct net_device*) ; 
 TYPE_1__* ax25_dev_list ; 
 int /*<<< orphan*/  ax25_dev_lock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct net_device *dev)
{
	ax25_dev *s, *ax25_dev;

	if ((ax25_dev = FUNC0(dev)) == NULL)
		return;

	FUNC3();

	FUNC6(&ax25_dev_lock);

#ifdef CONFIG_AX25_DAMA_SLAVE
	ax25_ds_del_timer(ax25_dev);
#endif

	/*
	 *	Remove any packet forwarding that points to this device.
	 */
	for (s = ax25_dev_list; s != NULL; s = s->next)
		if (s->forward == dev)
			s->forward = NULL;

	if ((s = ax25_dev_list) == ax25_dev) {
		ax25_dev_list = s->next;
		FUNC7(&ax25_dev_lock);
		FUNC4(dev);
		FUNC5(ax25_dev);
		FUNC2();
		return;
	}

	while (s != NULL && s->next != NULL) {
		if (s->next == ax25_dev) {
			s->next = ax25_dev->next;
			FUNC7(&ax25_dev_lock);
			FUNC4(dev);
			FUNC5(ax25_dev);
			FUNC2();
			return;
		}

		s = s->next;
	}
	FUNC7(&ax25_dev_lock);
	dev->ax25_ptr = NULL;

	FUNC2();
}