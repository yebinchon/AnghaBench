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
struct net_device {int dummy; } ;
struct lapb_register_struct {int dummy; } ;
struct lapb_cb {struct lapb_register_struct callbacks; struct net_device* dev; } ;

/* Variables and functions */
 int LAPB_BADTOKEN ; 
 int LAPB_NOMEM ; 
 int LAPB_OK ; 
 struct lapb_cb* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct lapb_cb*) ; 
 struct lapb_cb* FUNC2 () ; 
 int /*<<< orphan*/  lapb_list_lock ; 
 int /*<<< orphan*/  FUNC3 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC4 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct net_device *dev, struct lapb_register_struct *callbacks)
{
	struct lapb_cb *lapb;
	int rc = LAPB_BADTOKEN;

	FUNC5(&lapb_list_lock);

	lapb = FUNC0(dev);
	if (lapb) {
		FUNC3(lapb);
		goto out;
	}

	lapb = FUNC2();
	rc = LAPB_NOMEM;
	if (!lapb)
		goto out;

	lapb->dev       = dev;
	lapb->callbacks = *callbacks;

	FUNC1(lapb);

	FUNC4(lapb);

	rc = LAPB_OK;
out:
	FUNC6(&lapb_list_lock);
	return rc;
}