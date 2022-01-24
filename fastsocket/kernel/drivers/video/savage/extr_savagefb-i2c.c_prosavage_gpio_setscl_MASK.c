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
typedef  int /*<<< orphan*/  u32 ;
struct savagefb_i2c_chan {int /*<<< orphan*/  par; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROSAVAGE_I2C_ENAB ; 
 int /*<<< orphan*/  PROSAVAGE_I2C_SCL_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void* data, int val)
{
	struct savagefb_i2c_chan *chan = data;
	u32			  r;

	r = FUNC0(chan->reg, chan->par);
	r |= PROSAVAGE_I2C_ENAB;
	if (val) {
		r |= PROSAVAGE_I2C_SCL_OUT;
	} else {
		r &= ~PROSAVAGE_I2C_SCL_OUT;
	}

	FUNC1(chan->reg, r, chan->par);
}