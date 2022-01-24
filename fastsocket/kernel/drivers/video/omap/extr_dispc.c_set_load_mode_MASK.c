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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DISPC_CONFIG ; 
 int DISPC_LOAD_CLUT_ONCE_FRAME ; 
 int DISPC_LOAD_CLUT_ONLY ; 
 int DISPC_LOAD_FRAME_ONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(int mode)
{
	FUNC0(mode & ~(DISPC_LOAD_CLUT_ONLY | DISPC_LOAD_FRAME_ONLY |
			DISPC_LOAD_CLUT_ONCE_FRAME));
	FUNC1(DISPC_CONFIG, 0x03 << 1, mode << 1);
}