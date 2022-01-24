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
typedef  int u32 ;
struct vga_regset {scalar_t__ regnum; int lowbit; int highbit; } ;

/* Variables and functions */
 scalar_t__ VGA_REGSET_END_VAL ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 

void FUNC2(const struct vga_regset *regset, u32 value) {

	u8 regval, bitval, bitnum;

	while (regset->regnum != VGA_REGSET_END_VAL) {
		regval = FUNC0(NULL, regset->regnum);
		bitnum = regset->lowbit;
		while (bitnum <= regset->highbit) {
			bitval = 1 << bitnum;
			regval = regval & ~bitval;
			if (value & 1) regval = regval | bitval;
			bitnum ++;
			value = value >> 1;
		}
		FUNC1(NULL, regset->regnum, regval);
		regset ++;
	}
}