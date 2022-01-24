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
struct uwb_rc {int dummy; } ;
struct uwb_dev {struct uwb_rc* rc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int UWB_SCAN_TOP ; 
 int FUNC0 (char const*,char*,unsigned int*,unsigned int*,unsigned int*) ; 
 struct uwb_dev* FUNC1 (struct device*) ; 
 int FUNC2 (struct uwb_rc*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t size)
{
	struct uwb_dev *uwb_dev = FUNC1(dev);
	struct uwb_rc *rc = uwb_dev->rc;
	unsigned channel;
	unsigned type;
	unsigned bpst_offset = 0;
	ssize_t result = -EINVAL;

	result = FUNC0(buf, "%u %u %u\n", &channel, &type, &bpst_offset);
	if (result >= 2 && type < UWB_SCAN_TOP)
		result = FUNC2(rc, channel, type, bpst_offset);

	return result < 0 ? result : size;
}