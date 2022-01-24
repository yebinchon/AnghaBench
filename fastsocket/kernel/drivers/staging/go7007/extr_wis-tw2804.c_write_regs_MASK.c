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
typedef  int u8 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i2c_client*,int,int) ; 

__attribute__((used)) static int FUNC1(struct i2c_client *client, u8 *regs, int channel)
{
	int i;

	for (i = 0; regs[i] != 0xff; i += 2)
		if (FUNC0(client,
				regs[i] | (channel << 6), regs[i + 1]) < 0)
			return -1;
	return 0;
}