#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct iio_interrupt {int dummy; } ;
struct iio_event_interface {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  kobj; } ;
struct iio_dev {int num_interrupt_lines; TYPE_3__* event_interfaces; TYPE_3__* interrupts; TYPE_1__* event_attrs; TYPE_5__ dev; int /*<<< orphan*/  driver_module; } ;
struct TYPE_9__ {int id; scalar_t__ _attrname; scalar_t__ _name; int /*<<< orphan*/  owner; } ;
struct TYPE_8__ {char const* name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct iio_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  iio_event_idr ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*,char const*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int,char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct iio_dev *dev_info)
{
	int ret = 0, i, j;

	if (dev_info->num_interrupt_lines == 0)
		return 0;

	dev_info->event_interfaces =
		FUNC8(sizeof(struct iio_event_interface)
			*dev_info->num_interrupt_lines,
			GFP_KERNEL);
	if (dev_info->event_interfaces == NULL) {
		ret = -ENOMEM;
		goto error_ret;
	}

	dev_info->interrupts = FUNC8(sizeof(struct iio_interrupt *)
				       *dev_info->num_interrupt_lines,
				       GFP_KERNEL);
	if (dev_info->interrupts == NULL) {
		ret = -ENOMEM;
		goto error_free_event_interfaces;
	}

	for (i = 0; i < dev_info->num_interrupt_lines; i++) {
		dev_info->event_interfaces[i].owner = dev_info->driver_module;
		ret = FUNC5(&iio_event_idr);
		if (ret)
			goto error_free_setup_ev_ints;
		else
			dev_info->event_interfaces[i].id = ret;

		FUNC9(dev_info->event_interfaces[i]._name, 20,
			 "event_line%d",
			dev_info->event_interfaces[i].id);

		ret = FUNC6(&dev_info->event_interfaces[i],
				       (const char *)(dev_info
						      ->event_interfaces[i]
						      ._name),
				       dev_info->driver_module,
				       &dev_info->dev);
		if (ret) {
			FUNC2(&dev_info->dev,
				"Could not get chrdev interface\n");
			FUNC4(&iio_event_idr,
					 dev_info->event_interfaces[i].id);
			goto error_free_setup_ev_ints;
		}
	}

	for (i = 0; i < dev_info->num_interrupt_lines; i++) {
		FUNC9(dev_info->event_interfaces[i]._attrname, 20,
			"event_line%d_sources", i);
		dev_info->event_attrs[i].name
			= (const char *)
			(dev_info->event_interfaces[i]._attrname);
		ret = FUNC10(&dev_info->dev.kobj,
					 &dev_info->event_attrs[i]);
		if (ret) {
			FUNC2(&dev_info->dev,
				"Failed to register sysfs for event attrs");
			goto error_remove_sysfs_interfaces;
		}
	}

	for (i = 0; i < dev_info->num_interrupt_lines; i++) {
		ret = FUNC0(dev_info, i);
		if (ret)
			goto error_unregister_config_attrs;
	}

	return 0;

error_unregister_config_attrs:
	for (j = 0; j < i; j++)
		FUNC1(dev_info, i);
	i = dev_info->num_interrupt_lines - 1;
error_remove_sysfs_interfaces:
	for (j = 0; j < i; j++)
		FUNC11(&dev_info->dev.kobj,
				   &dev_info->event_attrs[j]);
	i = dev_info->num_interrupt_lines - 1;
error_free_setup_ev_ints:
	for (j = 0; j < i; j++) {
		FUNC4(&iio_event_idr,
				 dev_info->event_interfaces[i].id);
		FUNC3(&dev_info->event_interfaces[j]);
	}
	FUNC7(dev_info->interrupts);
error_free_event_interfaces:
	FUNC7(dev_info->event_interfaces);
error_ret:

	return ret;
}