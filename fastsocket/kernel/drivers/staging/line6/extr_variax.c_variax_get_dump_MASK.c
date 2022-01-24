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
struct TYPE_2__ {int /*<<< orphan*/  control; } ;
struct usb_line6_variax {TYPE_1__ model_data; int /*<<< orphan*/  dumpreq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct usb_line6_variax* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			       struct device_attribute *attr, char *buf)
{
	struct usb_line6_variax *variax = FUNC3(FUNC2(dev));
	int retval;
	retval = FUNC0(&variax->dumpreq, 0);
	if (retval < 0)
		return retval;
	FUNC1(buf, &variax->model_data.control,
	       sizeof(variax->model_data.control));
	return sizeof(variax->model_data.control);
}