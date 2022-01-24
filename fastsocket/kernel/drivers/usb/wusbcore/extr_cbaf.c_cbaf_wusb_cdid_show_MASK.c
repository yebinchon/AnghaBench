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
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cbaf {int /*<<< orphan*/  cdid; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  pr_cdid ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int WUSB_CKHDID_STRSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 struct usb_interface* FUNC2 (struct device*) ; 
 struct cbaf* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	struct usb_interface *iface = FUNC2(dev);
	struct cbaf *cbaf = FUNC3(iface);
	char pr_cdid[WUSB_CKHDID_STRSIZE];

	FUNC0(pr_cdid, sizeof(pr_cdid), &cbaf->cdid);
	return FUNC1(buf, PAGE_SIZE, "%s\n", pr_cdid);
}