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
 int HGA_MODE_GRAPHICS ; 
 int /*<<< orphan*/  HGA_MODE_PORT ; 
 int HGA_MODE_VIDEO_EN ; 
 int /*<<< orphan*/  hga_reg_lock ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(int blank_mode)
{
	unsigned long flags;

	FUNC1(&hga_reg_lock, flags);
	if (blank_mode) {
		FUNC0(0x00, HGA_MODE_PORT);	/* disable video */
	} else {
		FUNC0(HGA_MODE_VIDEO_EN | HGA_MODE_GRAPHICS, HGA_MODE_PORT);
	}
	FUNC2(&hga_reg_lock, flags);
}