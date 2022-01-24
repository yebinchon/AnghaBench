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
typedef  int /*<<< orphan*/  wavnc_info ;

/* Variables and functions */
 int WACMD_GET_LEVEL ; 
 int /*<<< orphan*/  WACMD_SET_MIXER ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC2(wavnc_info *devc, char left_dev, char right_dev)
{
	unsigned int reg_08, reg_09;

	reg_08 = FUNC0(devc, WACMD_GET_LEVEL | 0x0800);
	reg_09 = FUNC0(devc, WACMD_GET_LEVEL | 0x0900);

	reg_08 = (reg_08 & ~0x3f) | right_dev << 3 | left_dev;

	FUNC1(devc, WACMD_SET_MIXER, reg_08, reg_09);
}