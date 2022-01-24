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
typedef  scalar_t__ uint8_t ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  I2CR ; 
 int /*<<< orphan*/  I2CW ; 
 int /*<<< orphan*/  I2C_ATTRNOP ; 
 int /*<<< orphan*/  I2C_ATTRSTART ; 
 int /*<<< orphan*/  I2C_ATTRSTOP ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  P_I2CCTRL ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t FUNC6(struct comedi_device *dev, uint8_t addr)
{
	uint8_t rtnval;

	/*  Send EEPROM target address. */
	if (FUNC4(dev, FUNC3(I2C_ATTRSTART, I2CW)
			 /* Byte2 = I2C command: write to I2C EEPROM  device. */
			 | FUNC2(I2C_ATTRSTOP, addr)
			 /* Byte1 = EEPROM internal target address. */
			 | FUNC1(I2C_ATTRNOP, 0))) {	/*  Byte0 = Not sent. */
		/*  Abort function and declare error if handshake failed. */
		FUNC0("I2Cread: error handshake I2Cread  a\n");
		return 0;
	}
	/*  Execute EEPROM read. */
	if (FUNC4(dev, FUNC3(I2C_ATTRSTART, I2CR)

			 /*  Byte2 = I2C */
			 /*  command: read */
			 /*  from I2C EEPROM */
			 /*  device. */
			 |FUNC2(I2C_ATTRSTOP, 0)

			 /*  Byte1 receives */
			 /*  uint8_t from */
			 /*  EEPROM. */
			 |FUNC1(I2C_ATTRNOP, 0))) {	/*  Byte0 = Not  sent. */

		/*  Abort function and declare error if handshake failed. */
		FUNC0("I2Cread: error handshake I2Cread b\n");
		return 0;
	}
	/*  Return copy of EEPROM value. */
	rtnval = (uint8_t) (FUNC5(P_I2CCTRL) >> 16);
	return rtnval;
}