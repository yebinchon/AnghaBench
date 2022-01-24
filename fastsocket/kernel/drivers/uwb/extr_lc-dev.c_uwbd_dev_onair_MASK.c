#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {TYPE_3__* parent; } ;
struct TYPE_5__ {struct device dev; } ;
struct uwb_rc {TYPE_2__ uwb_dev; } ;
struct uwb_dev {struct uwb_beca_e* bce; int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mac_addr; } ;
struct uwb_beca_e {struct uwb_dev* uwb_dev; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * mac_addr; } ;
typedef  int /*<<< orphan*/  macbuf ;
typedef  int /*<<< orphan*/  devbuf ;
struct TYPE_6__ {TYPE_1__* bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UWB_ADDR_STRSIZE ; 
 int /*<<< orphan*/  UWB_NOTIF_ONAIR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_dev*) ; 
 struct uwb_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uwb_beca_e*) ; 
 int FUNC7 (struct uwb_dev*,struct device*,struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct uwb_dev*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct uwb_rc*,struct uwb_dev*,int /*<<< orphan*/ ) ; 

void FUNC12(struct uwb_rc *rc, struct uwb_beca_e *bce)
{
	int result;
	struct device *dev = &rc->uwb_dev.dev;
	struct uwb_dev *uwb_dev;
	char macbuf[UWB_ADDR_STRSIZE], devbuf[UWB_ADDR_STRSIZE];

	FUNC10(macbuf, sizeof(macbuf), bce->mac_addr);
	FUNC8(devbuf, sizeof(devbuf), &bce->dev_addr);
	uwb_dev = FUNC5(sizeof(struct uwb_dev), GFP_KERNEL);
	if (uwb_dev == NULL) {
		FUNC0(dev, "new device %s: Cannot allocate memory\n",
			macbuf);
		return;
	}
	FUNC9(uwb_dev);		/* This sets refcnt to one, we own it */
	uwb_dev->mac_addr = *bce->mac_addr;
	uwb_dev->dev_addr = bce->dev_addr;
	FUNC3(&uwb_dev->dev, macbuf);
	result = FUNC7(uwb_dev, &rc->uwb_dev.dev, rc);
	if (result < 0) {
		FUNC0(dev, "new device %s: cannot instantiate device\n",
			macbuf);
		goto error_dev_add;
	}
	/* plug the beacon cache */
	bce->uwb_dev = uwb_dev;
	uwb_dev->bce = bce;
	FUNC6(bce);		/* released in uwb_dev_sys_release() */
	FUNC1(dev, "uwb device (mac %s dev %s) connected to %s %s\n",
		 macbuf, devbuf, rc->uwb_dev.dev.parent->bus->name,
		 FUNC2(rc->uwb_dev.dev.parent));
	FUNC11(rc, uwb_dev, UWB_NOTIF_ONAIR);
	return;

error_dev_add:
	FUNC4(uwb_dev);
	return;
}