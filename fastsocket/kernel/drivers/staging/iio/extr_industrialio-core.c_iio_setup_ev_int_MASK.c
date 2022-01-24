#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct module {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  devt; int /*<<< orphan*/ * type; struct device* parent; int /*<<< orphan*/ * class; } ;
struct TYPE_13__ {struct module* owner; } ;
struct TYPE_11__ {TYPE_8__ chrdev; scalar_t__ flags; struct iio_event_interface* private; } ;
struct TYPE_10__ {int /*<<< orphan*/  list; } ;
struct iio_event_interface {int max_events; TYPE_3__ dev; TYPE_2__ handler; int /*<<< orphan*/  wait; TYPE_1__ det_events; scalar_t__ current_events; int /*<<< orphan*/  event_list_lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,char const*) ; 
 int FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  iio_class ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  iio_devt ; 
 int /*<<< orphan*/  iio_event_chrdev_fileops ; 
 int /*<<< orphan*/  iio_event_type ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 

int FUNC14(struct iio_event_interface *ev_int,
		     const char *name,
		     struct module *owner,
		     struct device *dev)
{
	int ret, minor;

	ev_int->dev.class = &iio_class;
	ev_int->dev.parent = dev;
	ev_int->dev.type = &iio_event_type;
	FUNC7(&ev_int->dev);

	minor = FUNC10();
	if (minor < 0) {
		ret = minor;
		goto error_device_put;
	}
	ev_int->dev.devt = FUNC2(FUNC1(iio_devt), minor);
	FUNC5(&ev_int->dev, "%s", name);

	ret = FUNC6(&ev_int->dev);
	if (ret)
		goto error_free_minor;

	FUNC4(&ev_int->handler.chrdev, &iio_event_chrdev_fileops);
	ev_int->handler.chrdev.owner = owner;

	FUNC12(&ev_int->event_list_lock);
	/* discussion point - make this variable? */
	ev_int->max_events = 10;
	ev_int->current_events = 0;
	FUNC0(&ev_int->det_events.list);
	FUNC11(&ev_int->wait);
	ev_int->handler.private = ev_int;
	ev_int->handler.flags = 0;

	ret = FUNC3(&ev_int->handler.chrdev, ev_int->dev.devt, 1);
	if (ret)
		goto error_unreg_device;

	return 0;

error_unreg_device:
	FUNC8(&ev_int->dev);
error_free_minor:
	FUNC9(minor);
error_device_put:
	FUNC13(&ev_int->dev);

	return ret;
}