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
struct hw20k2 {int addr_size; int data_size; int dev_id; } ;
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

__attribute__((used)) static int FUNC4(struct hw *hw, u8 dev_id, u8 addr_size, u8 data_size)
{
	struct hw20k2 *hw20k2 = (struct hw20k2 *)hw;
	int err;
	unsigned int i2c_status;
	unsigned int i2c_addr;

	err = FUNC0(hw);
	if (err < 0)
		return err;

	hw20k2->addr_size = addr_size;
	hw20k2->data_size = data_size;
	hw20k2->dev_id = dev_id;

	i2c_addr = 0;
	FUNC3(&i2c_addr, I2C_ADDRESS_SLAD, dev_id);

	FUNC2(hw, I2C_IF_ADDRESS, i2c_addr);

	i2c_status = FUNC1(hw, I2C_IF_STATUS);

	FUNC3(&i2c_status, I2C_STATUS_DCM, 1); /* Direct control mode */

	FUNC2(hw, I2C_IF_STATUS, i2c_status);

	return 0;
}