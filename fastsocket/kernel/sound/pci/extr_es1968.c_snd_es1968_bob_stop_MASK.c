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
typedef  int /*<<< orphan*/  u16 ;
struct es1968 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESM_BOB_ENABLE ; 
 int /*<<< orphan*/  ESM_BOB_START ; 
 int /*<<< orphan*/  FUNC0 (struct es1968*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct es1968*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct es1968 *chip)
{
	u16 reg;

	reg = FUNC0(chip, 0x11);
	reg &= ~ESM_BOB_ENABLE;
	FUNC1(chip, 0x11, reg);
	reg = FUNC0(chip, 0x17);
	reg &= ~ESM_BOB_START;
	FUNC1(chip, 0x17, reg);
}