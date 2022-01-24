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
struct usb_device {int dummy; } ;
struct linux_binprm {TYPE_1__* cred; int /*<<< orphan*/  filename; } ;
struct TYPE_2__ {scalar_t__ egid; int /*<<< orphan*/  euid; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  product_id ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct usb_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  vendor_id ; 

__attribute__((used)) static int FUNC3 (struct linux_binprm *bprm)
{
	struct usb_device *dev;

	FUNC0("file %s, e_uid = %d, e_gid = %d\n",
		 bprm->filename, bprm->cred->euid, bprm->cred->egid);

	if (bprm->cred->egid == 0) {
		dev = FUNC1(vendor_id, product_id);
		if (!dev) {
			FUNC0("e_gid = 0, and device not found, "
				 "task not allowed to run...\n");
			return -EPERM;
		}
		FUNC2(dev);
	}

	return 0;
}