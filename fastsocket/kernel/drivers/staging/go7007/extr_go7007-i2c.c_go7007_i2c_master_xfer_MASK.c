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
struct i2c_msg {int len; scalar_t__ addr; int flags; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct go7007 {int dummy; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 scalar_t__ FUNC0 (struct go7007*,scalar_t__,int,int,int,int*) ; 
 struct go7007* FUNC1 (struct i2c_adapter*) ; 

__attribute__((used)) static int FUNC2(struct i2c_adapter *adapter,
					struct i2c_msg msgs[], int num)
{
	struct go7007 *go = FUNC1(adapter);
	int i;

	for (i = 0; i < num; ++i) {
		/* We can only do two things here -- write three bytes, or
		 * write two bytes and read one byte. */
		if (msgs[i].len == 2) {
			if (i + 1 == num || msgs[i].addr != msgs[i + 1].addr ||
					(msgs[i].flags & I2C_M_RD) ||
					!(msgs[i + 1].flags & I2C_M_RD) ||
					msgs[i + 1].len != 1)
				return -1;
			if (FUNC0(go, msgs[i].addr, 1,
					(msgs[i].buf[0] << 8) | msgs[i].buf[1],
					0x01, &msgs[i + 1].buf[0]) < 0)
				return -1;
			++i;
		} else if (msgs[i].len == 3) {
			if (msgs[i].flags & I2C_M_RD)
				return -1;
			if (msgs[i].len != 3)
				return -1;
			if (FUNC0(go, msgs[i].addr, 0,
					(msgs[i].buf[0] << 8) | msgs[i].buf[1],
					0x01, &msgs[i].buf[2]) < 0)
				return -1;
		} else
			return -1;
	}

	return 0;
}