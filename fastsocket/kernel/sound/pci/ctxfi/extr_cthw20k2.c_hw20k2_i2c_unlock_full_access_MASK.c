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
struct hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_IF_WLOCK ; 
 scalar_t__ STATE_UNLOCKED ; 
 scalar_t__ FUNC0 (struct hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct hw *hw)
{
	u8 UnlockKeySequence_FLASH_FULLACCESS_MODE[2] =  {0xB3, 0xD4};

	/* Send keys for forced BIOS mode */
	FUNC1(hw, I2C_IF_WLOCK,
			UnlockKeySequence_FLASH_FULLACCESS_MODE[0]);
	FUNC1(hw, I2C_IF_WLOCK,
			UnlockKeySequence_FLASH_FULLACCESS_MODE[1]);
	/* Check whether the chip is unlocked */
	if (FUNC0(hw, I2C_IF_WLOCK) == STATE_UNLOCKED)
		return 0;

	return -1;
}