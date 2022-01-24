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
struct lapb_cb {int dummy; } ;

/* Variables and functions */
 int LAPB_BADTOKEN ; 
 int LAPB_OK ; 
 struct lapb_cb* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct lapb_cb*) ; 
 int /*<<< orphan*/  lapb_list_lock ; 
 int /*<<< orphan*/  FUNC3 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC4 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC5 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct net_device *dev)
{
	struct lapb_cb *lapb;
	int rc = LAPB_BADTOKEN;

	FUNC6(&lapb_list_lock);
	lapb = FUNC0(dev);
	if (!lapb)
		goto out;

	FUNC4(lapb);
	FUNC5(lapb);

	FUNC2(lapb);

	FUNC1(lapb);

	FUNC3(lapb);
	rc = LAPB_OK;
out:
	FUNC7(&lapb_list_lock);
	return rc;
}