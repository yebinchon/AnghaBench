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
struct sca3000_state {TYPE_1__* info; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int option_mode_1; int option_mode_2; } ;

/* Variables and functions */
#define  SCA3000_OP_MODE_BYPASS 130 
#define  SCA3000_OP_MODE_NARROW 129 
#define  SCA3000_OP_MODE_WIDE 128 
 struct iio_dev* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev,
					 struct device_attribute *attr,
					 char *buf)
{
	struct iio_dev *dev_info = FUNC0(dev);
	struct sca3000_state *st = dev_info->dev_data;
	int len = 0;

	len += FUNC1(buf + len, "0 - normal mode");
	switch (st->info->option_mode_1) {
	case SCA3000_OP_MODE_NARROW:
		len += FUNC1(buf + len, ", 1 - narrow mode");
		break;
	case SCA3000_OP_MODE_BYPASS:
		len += FUNC1(buf + len, ", 1 - bypass mode");
		break;
	};
	switch (st->info->option_mode_2) {
	case SCA3000_OP_MODE_WIDE:
		len += FUNC1(buf + len, ", 2 - wide mode");
		break;
	}
	/* always supported */
	len += FUNC1(buf + len, " 3 - motion detection \n");

	return len;
}