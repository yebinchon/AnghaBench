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

/* Variables and functions */
 unsigned int INVALID_CHIP_ADDRESS ; 
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int,int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int,int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int,int) ; 

__attribute__((used)) static unsigned int FUNC6(unsigned int chip_addx,
					bool *code, bool *yram)
{
	*code = *yram = false;

	if (FUNC1(chip_addx, 1)) {
		*code = true;
		return FUNC0(chip_addx);
	} else if (FUNC3(chip_addx, 1)) {
		return FUNC2(chip_addx);
	} else if (FUNC5(chip_addx, 1)) {
		*yram = true;
		return FUNC4(chip_addx);
	}

	return INVALID_CHIP_ADDRESS;
}