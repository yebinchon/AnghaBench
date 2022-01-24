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
struct vx_core {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSUER ; 
 int /*<<< orphan*/  RUER ; 
 int XX_UER_CBITS_OFFSET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (struct vx_core*) ; 
 int /*<<< orphan*/  FUNC3 (struct vx_core*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vx_core*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct vx_core *chip, int index, int val)
{
	unsigned long flags;
	val = !!val;	/* 0 or 1 */
	FUNC0(&chip->lock, flags);
	if (FUNC2(chip)) {
		FUNC3(chip, CSUER, 0); /* write */
		FUNC3(chip, RUER, (val << 7) | (index & XX_UER_CBITS_OFFSET_MASK));
	} else {
		FUNC4(chip, CSUER, 0); /* write */
		FUNC4(chip, RUER, (val << 7) | (index & XX_UER_CBITS_OFFSET_MASK));
	}
	FUNC1(&chip->lock, flags);
}