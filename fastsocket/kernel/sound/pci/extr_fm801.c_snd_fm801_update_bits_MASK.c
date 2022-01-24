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
struct fm801 {int /*<<< orphan*/  reg_lock; scalar_t__ port; } ;

/* Variables and functions */
 unsigned short FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct fm801 *chip, unsigned short reg,
				 unsigned short mask, unsigned short value)
{
	int change;
	unsigned long flags;
	unsigned short old, new;

	FUNC2(&chip->reg_lock, flags);
	old = FUNC0(chip->port + reg);
	new = (old & ~mask) | value;
	change = old != new;
	if (change)
		FUNC1(new, chip->port + reg);
	FUNC3(&chip->reg_lock, flags);
	return change;
}