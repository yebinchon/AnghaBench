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
struct hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_ADDRESS_SLAD ; 
 int /*<<< orphan*/  I2C_IF_ADDRESS ; 
 int /*<<< orphan*/  I2C_IF_STATUS ; 
 int /*<<< orphan*/  I2C_STATUS_DCM ; 
 int FUNC0 (struct hw*) ; 
 unsigned int FUNC1 (struct hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hw*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct hw *hw)
{
	unsigned int i2c_status;
	unsigned int i2c_addr;

	i2c_addr = 0;
	FUNC3(&i2c_addr, I2C_ADDRESS_SLAD, 0x57); /* I2C id */

	FUNC2(hw, I2C_IF_ADDRESS, i2c_addr);

	i2c_status = FUNC1(hw, I2C_IF_STATUS);

	FUNC3(&i2c_status, I2C_STATUS_DCM, 0); /* I2C mode */

	FUNC2(hw, I2C_IF_STATUS, i2c_status);

	return FUNC0(hw);
}