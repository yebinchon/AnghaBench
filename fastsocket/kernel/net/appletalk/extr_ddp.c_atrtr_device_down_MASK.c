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
struct net_device {int dummy; } ;
struct atalk_route {struct atalk_route* next; struct net_device* dev; } ;
struct TYPE_2__ {struct net_device* dev; } ;

/* Variables and functions */
 struct atalk_route* atalk_routes ; 
 int /*<<< orphan*/  atalk_routes_lock ; 
 TYPE_1__ atrtr_default ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct atalk_route*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct atalk_route **r = &atalk_routes;
	struct atalk_route *tmp;

	FUNC3(&atalk_routes_lock);
	while ((tmp = *r) != NULL) {
		if (tmp->dev == dev) {
			*r = tmp->next;
			FUNC1(dev);
			FUNC2(tmp);
		} else
			r = &tmp->next;
	}
	FUNC4(&atalk_routes_lock);

	if (atrtr_default.dev == dev)
		FUNC0(NULL);
}