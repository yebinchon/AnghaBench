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
struct output_device {int request_state; TYPE_1__* props; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_state ) (struct output_device*) ;} ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct output_device*) ; 
 struct output_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					struct device_attribute *attr,
					const char *buf,size_t count)
{
	char *endp;
	struct output_device *od = FUNC3(dev);
	int request_state = FUNC1(buf,&endp,0);
	size_t size = endp - buf;

	if (FUNC0(*endp))
		size++;
	if (size != count)
		return -EINVAL;

	if (od->props) {
		od->request_state = request_state;
		od->props->set_state(od);
	}
	return count;
}