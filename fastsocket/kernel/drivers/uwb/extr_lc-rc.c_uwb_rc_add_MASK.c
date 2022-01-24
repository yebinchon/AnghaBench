#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {TYPE_2__* bus; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mac_addr; struct device dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  event_list_lock; int /*<<< orphan*/  event_list; int /*<<< orphan*/  wq; } ;
struct uwb_rc {int (* start ) (struct uwb_rc*) ;int ready; int /*<<< orphan*/  (* stop ) (struct uwb_rc*) ;TYPE_3__ uwb_dev; TYPE_1__ uwbd; void* priv; int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  macbuf ;
typedef  int /*<<< orphan*/  devbuf ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int UWB_ADDR_STRSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC8 (struct uwb_rc*) ; 
 int FUNC9 (TYPE_3__*,struct device*,struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (struct uwb_rc*) ; 
 int FUNC15 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC16 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC17 (struct uwb_rc*) ; 

int FUNC18(struct uwb_rc *rc, struct device *parent_dev, void *priv)
{
	int result;
	struct device *dev;
	char macbuf[UWB_ADDR_STRSIZE], devbuf[UWB_ADDR_STRSIZE];

	rc->index = FUNC13();

	dev = &rc->uwb_dev.dev;
	FUNC4(dev, "uwb%d", rc->index);

	rc->priv = priv;

	FUNC5(&rc->uwbd.wq);
	FUNC0(&rc->uwbd.event_list);
	FUNC6(&rc->uwbd.event_list_lock);

	FUNC16(rc);

	result = rc->start(rc);
	if (result < 0)
		goto error_rc_start;

	result = FUNC14(rc);
	if (result < 0) {
		FUNC1(dev, "cannot setup UWB radio controller: %d\n", result);
		goto error_rc_setup;
	}

	result = FUNC9(&rc->uwb_dev, parent_dev, rc);
	if (result < 0 && result != -EADDRNOTAVAIL)
		goto error_dev_add;

	result = FUNC15(rc);
	if (result < 0) {
		FUNC1(parent_dev, "cannot register UWB radio controller "
			"dev attributes: %d\n", result);
		goto error_sys_add;
	}

	FUNC12(macbuf, sizeof(macbuf), &rc->uwb_dev.mac_addr);
	FUNC10(devbuf, sizeof(devbuf), &rc->uwb_dev.dev_addr);
	FUNC2(dev,
		 "new uwb radio controller (mac %s dev %s) on %s %s\n",
		 macbuf, devbuf, parent_dev->bus->name, FUNC3(parent_dev));
	rc->ready = 1;
	return 0;

error_sys_add:
	FUNC11(&rc->uwb_dev);
error_dev_add:
error_rc_setup:
	rc->stop(rc);
error_rc_start:
	FUNC17(rc);
	return result;
}