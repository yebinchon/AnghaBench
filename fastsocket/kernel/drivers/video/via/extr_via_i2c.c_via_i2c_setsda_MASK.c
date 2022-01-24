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
struct via_i2c_stuff {int i2c_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  GPIOPORTINDEX 129 
#define  I2CPORTINDEX 128 
 int /*<<< orphan*/  VIASR ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void *data, int state)
{
	u8 val;
	struct via_i2c_stuff *via_i2c_chan = (struct via_i2c_stuff *)data;

	val = FUNC1(VIASR, via_i2c_chan->i2c_port) & 0xF0;
	if (state)
		val |= 0x10;
	else
		val &= ~0x10;
	switch (via_i2c_chan->i2c_port) {
	case I2CPORTINDEX:
		val |= 0x01;
		break;
	case GPIOPORTINDEX:
		val |= 0x40;
		break;
	default:
		FUNC0("via_i2c: specify wrong i2c port.\n");
	}
	FUNC2(via_i2c_chan->i2c_port, VIASR, val);
}