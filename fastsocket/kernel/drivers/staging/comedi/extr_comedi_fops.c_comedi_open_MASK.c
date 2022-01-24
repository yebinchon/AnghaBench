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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct comedi_device_file_info {struct comedi_device* device; } ;
struct comedi_device {int in_request_module; scalar_t__ use_count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  (* open ) (struct comedi_device*) ;scalar_t__ attached; TYPE_1__* driver; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  COMEDI_MAJOR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int ENOSYS ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct comedi_device_file_info* FUNC3 (unsigned int const) ; 
 unsigned int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct file *file)
{
	const unsigned minor = FUNC4(inode);
	struct comedi_device_file_info *dev_file_info =
	    FUNC3(minor);
	struct comedi_device *dev =
	    dev_file_info ? dev_file_info->device : NULL;

	if (dev == NULL) {
		FUNC0("invalid minor number\n");
		return -ENODEV;
	}

	/* This is slightly hacky, but we want module autoloading
	 * to work for root.
	 * case: user opens device, attached -> ok
	 * case: user opens device, unattached, in_request_module=0 -> autoload
	 * case: user opens device, unattached, in_request_module=1 -> fail
	 * case: root opens device, attached -> ok
	 * case: root opens device, unattached, in_request_module=1 -> ok
	 *   (typically called from modprobe)
	 * case: root opens device, unattached, in_request_module=0 -> autoload
	 *
	 * The last could be changed to "-> ok", which would deny root
	 * autoloading.
	 */
	FUNC6(&dev->mutex);
	if (dev->attached)
		goto ok;
	if (!FUNC2(CAP_NET_ADMIN) && dev->in_request_module) {
		FUNC0("in request module\n");
		FUNC7(&dev->mutex);
		return -ENODEV;
	}
	if (FUNC2(CAP_NET_ADMIN) && dev->in_request_module)
		goto ok;

	dev->in_request_module = 1;

#ifdef CONFIG_KMOD
	mutex_unlock(&dev->mutex);
	request_module("char-major-%i-%i", COMEDI_MAJOR, dev->minor);
	mutex_lock(&dev->mutex);
#endif

	dev->in_request_module = 0;

	if (!dev->attached && !FUNC2(CAP_NET_ADMIN)) {
		FUNC0("not attached and not CAP_NET_ADMIN\n");
		FUNC7(&dev->mutex);
		return -ENODEV;
	}
ok:
	FUNC1(THIS_MODULE);

	if (dev->attached) {
		if (!FUNC10(dev->driver->module)) {
			FUNC5(THIS_MODULE);
			FUNC7(&dev->mutex);
			return -ENOSYS;
		}
	}

	if (dev->attached && dev->use_count == 0 && dev->open)
		dev->open(dev);

	dev->use_count++;

	FUNC7(&dev->mutex);

	return 0;
}