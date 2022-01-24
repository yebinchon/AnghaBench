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
struct notifier_block {int dummy; } ;
struct dn_ifaddr {TYPE_1__* ifa_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/ * ifa_list; } ;

/* Variables and functions */
#define  NETDEV_DOWN 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct dn_ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct dn_ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *this, unsigned long event, void *ptr)
{
	struct dn_ifaddr *ifa = (struct dn_ifaddr *)ptr;

	switch(event) {
		case NETDEV_UP:
			FUNC0(ifa);
			FUNC3(ifa->ifa_dev->dev);
			FUNC4(-1);
			break;
		case NETDEV_DOWN:
			FUNC1(ifa);
			if (ifa->ifa_dev && ifa->ifa_dev->ifa_list == NULL) {
				FUNC2(ifa->ifa_dev->dev, 1);
			} else {
				FUNC4(-1);
			}
			break;
	}
	return NOTIFY_DONE;
}