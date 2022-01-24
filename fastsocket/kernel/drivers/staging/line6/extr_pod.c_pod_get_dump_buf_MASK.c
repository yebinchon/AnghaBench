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
struct usb_line6_pod {int /*<<< orphan*/  prog_data_buf; int /*<<< orphan*/  dumpreq; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 struct usb_interface* FUNC2 (struct device*) ; 
 struct usb_line6_pod* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct usb_interface *interface = FUNC2(dev);
	struct usb_line6_pod *pod = FUNC3(interface);
	int retval = FUNC0(&pod->dumpreq, 0);
	if (retval < 0)
		return retval;
	FUNC1(buf, &pod->prog_data_buf, sizeof(pod->prog_data_buf));
	return sizeof(pod->prog_data_buf);
}