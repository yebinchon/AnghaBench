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
struct comedi_driver {int (* attach ) (struct comedi_device*,struct comedi_devconfig*) ;int /*<<< orphan*/  module; struct comedi_driver* next; int /*<<< orphan*/  driver_name; scalar_t__ num_names; } ;
struct comedi_device {int attached; char* board_name; struct comedi_driver* driver; int /*<<< orphan*/ * board_ptr; } ;
struct comedi_devconfig {int /*<<< orphan*/  board_name; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 struct comedi_driver* comedi_drivers ; 
 int /*<<< orphan*/ * FUNC1 (struct comedi_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_driver*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct comedi_device*,struct comedi_devconfig*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct comedi_device *dev, struct comedi_devconfig *it)
{
	struct comedi_driver *driv;
	int ret;

	if (dev->attached)
		return -EBUSY;

	for (driv = comedi_drivers; driv; driv = driv->next) {
		if (!FUNC9(driv->module)) {
			FUNC5
			    ("comedi: failed to increment module count, skipping\n");
			continue;
		}
		if (driv->num_names) {
			dev->board_ptr = FUNC1(driv, it->board_name);
			if (dev->board_ptr == NULL) {
				FUNC3(driv->module);
				continue;
			}
		} else {
			if (FUNC7(driv->driver_name, it->board_name)) {
				FUNC3(driv->module);
				continue;
			}
		}
		/* initialize dev->driver here so comedi_error() can be called from attach */
		dev->driver = driv;
		ret = driv->attach(dev, it);
		if (ret < 0) {
			FUNC3(dev->driver->module);
			FUNC0(dev);
			return ret;
		}
		goto attached;
	}

	/*  recognize has failed if we get here */
	/*  report valid board names before returning error */
	for (driv = comedi_drivers; driv; driv = driv->next) {
		if (!FUNC9(driv->module)) {
			FUNC5("comedi: failed to increment module count\n");
			continue;
		}
		FUNC2(driv);
		FUNC3(driv->module);
	}
	return -EIO;

attached:
	/* do a little post-config cleanup */
	ret = FUNC4(dev);
	FUNC3(dev->driver->module);
	if (ret < 0) {
		FUNC0(dev);
		return ret;
	}

	if (!dev->board_name) {
		FUNC5("BUG: dev->board_name=<%p>\n", dev->board_name);
		dev->board_name = "BUG";
	}
	FUNC6();
	dev->attached = 1;

	return 0;
}