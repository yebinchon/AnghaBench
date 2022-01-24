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
struct rfcomm_dlc {struct rfcomm_dev* owner; } ;
struct rfcomm_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  list; struct rfcomm_dlc* dlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dev*,struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  rfcomm_tty_driver ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct rfcomm_dev *dev)
{
	struct rfcomm_dlc *dlc = dev->dlc;

	FUNC0("dev %p dlc %p", dev, dlc);

	/* Refcount should only hit zero when called from rfcomm_dev_del()
	   which will have taken us off the list. Everything else are
	   refcounting bugs. */
	FUNC1(!FUNC3(&dev->list));

	FUNC5(dlc);
	/* Detach DLC if it's owned by this dev */
	if (dlc->owner == dev)
		dlc->owner = NULL;
	FUNC7(dlc);

	FUNC6(dlc);

	FUNC8(rfcomm_tty_driver, dev->id);

	FUNC2(dev);

	/* It's safe to call module_put() here because socket still
	   holds reference to this module. */
	FUNC4(THIS_MODULE);
}