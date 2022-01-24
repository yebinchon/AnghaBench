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
struct matrox_fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct matrox_fb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(struct matrox_fb_info *minfo, int reg, int val)
{
	unsigned long flags;

	FUNC0(flags);
	FUNC1(minfo, 0x87, reg);
	FUNC1(minfo, 0x88, val >> 2);
	FUNC1(minfo, 0x87, reg + 1);
	FUNC1(minfo, 0x88, val & 3);
	FUNC2(flags);
}