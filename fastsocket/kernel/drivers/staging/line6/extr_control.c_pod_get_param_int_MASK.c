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
struct TYPE_2__ {int* control; } ;
struct usb_line6_pod {TYPE_1__ prog_data; int /*<<< orphan*/  dumpreq; } ;
struct usb_interface {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char*,int) ; 
 struct usb_interface* FUNC2 (struct device*) ; 
 struct usb_line6_pod* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, char *buf, int param)
{
	struct usb_interface *interface = FUNC2(dev);
	struct usb_line6_pod *pod = FUNC3(interface);
	int retval = FUNC0(&pod->dumpreq, 0);
	if (retval < 0)
		return retval;
	return FUNC1(buf, "%d\n", pod->prog_data.control[param]);
}