#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  PDIO; } ;
typedef  TYPE_1__ RIVA_HW_INST ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,unsigned char) ; 

__attribute__((used)) static void FUNC2(RIVA_HW_INST *chip,
		       unsigned char regnum, unsigned char *red,
		       unsigned char *green, unsigned char *blue)
{
	
	FUNC1(chip->PDIO, 0x3c7, regnum);
	*red = FUNC0(chip->PDIO, 0x3c9);
	*green = FUNC0(chip->PDIO, 0x3c9);
	*blue = FUNC0(chip->PDIO, 0x3c9);
}