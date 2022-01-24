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
typedef  int /*<<< orphan*/  u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int s8 ;

/* Variables and functions */
 int LIS3L02DQ_DEC_MASK ; 
 int /*<<< orphan*/  LIS3L02DQ_REG_CTRL_1_ADDR ; 
#define  LIS3L02DQ_REG_CTRL_1_DF_128 131 
#define  LIS3L02DQ_REG_CTRL_1_DF_32 130 
#define  LIS3L02DQ_REG_CTRL_1_DF_64 129 
#define  LIS3L02DQ_REG_CTRL_1_DF_8 128 
 int FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	int ret, len = 0;
	s8 t;
	ret = FUNC0(dev,
				       LIS3L02DQ_REG_CTRL_1_ADDR,
				       (u8 *)&t);
	if (ret)
		return ret;
	t &= LIS3L02DQ_DEC_MASK;
	switch (t) {
	case LIS3L02DQ_REG_CTRL_1_DF_128:
		len = FUNC1(buf, "280\n");
		break;
	case LIS3L02DQ_REG_CTRL_1_DF_64:
		len = FUNC1(buf, "560\n");
		break;
	case LIS3L02DQ_REG_CTRL_1_DF_32:
		len = FUNC1(buf, "1120\n");
		break;
	case LIS3L02DQ_REG_CTRL_1_DF_8:
		len = FUNC1(buf, "4480\n");
		break;
	}
	return len;
}