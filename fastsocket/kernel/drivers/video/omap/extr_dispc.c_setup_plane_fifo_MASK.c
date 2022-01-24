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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int const DISPC_GFX_FIFO_SIZE_STATUS ; 
 int const DISPC_GFX_FIFO_THRESHOLD ; 
 int const DISPC_VID1_BASE ; 
 int const DISPC_VID2_BASE ; 
 int const DISPC_VID_FIFO_SIZE_STATUS ; 
 int const DISPC_VID_FIFO_THRESHOLD ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int const,int,int) ; 
 int FUNC3 (int const) ; 

__attribute__((used)) static void FUNC4(int plane, int ext_mode)
{
	const u32 ftrs_reg[] = { DISPC_GFX_FIFO_THRESHOLD,
				DISPC_VID1_BASE + DISPC_VID_FIFO_THRESHOLD,
			        DISPC_VID2_BASE + DISPC_VID_FIFO_THRESHOLD };
	const u32 fsz_reg[] = { DISPC_GFX_FIFO_SIZE_STATUS,
				DISPC_VID1_BASE + DISPC_VID_FIFO_SIZE_STATUS,
				DISPC_VID2_BASE + DISPC_VID_FIFO_SIZE_STATUS };
	int low, high;
	u32 l;

	FUNC0(plane > 2);

	l = FUNC3(fsz_reg[plane]);
	l &= FUNC1(0, 11);
	if (ext_mode) {
		low = l * 3 / 4;
		high = l;
	} else {
		low = l / 4;
		high = l * 3 / 4;
	}
	FUNC2(ftrs_reg[plane], FUNC1(16, 12) | FUNC1(0, 12),
			(high << 16) | low);
}