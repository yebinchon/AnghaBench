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
struct vx_core {scalar_t__ type; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSUER ; 
 int /*<<< orphan*/  RUER ; 
 scalar_t__ VX_TYPE_VXPOCKET ; 
 int XX_UER_CBITS_OFFSET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vx_core*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vx_core*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct vx_core *chip, int index)
{
	unsigned long flags;
	int val;
	FUNC0(&chip->lock, flags);
	if (chip->type >= VX_TYPE_VXPOCKET) {
		FUNC4(chip, CSUER, 1); /* read */
		FUNC4(chip, RUER, index & XX_UER_CBITS_OFFSET_MASK);
		val = (FUNC2(chip, RUER) >> 7) & 0x01;
	} else {
		FUNC5(chip, CSUER, 1); /* read */
		FUNC5(chip, RUER, index & XX_UER_CBITS_OFFSET_MASK);
		val = (FUNC3(chip, RUER) >> 7) & 0x01;
	}
	FUNC1(&chip->lock, flags);
	return val;
}