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
 int FUNC0 (int) ; 

__attribute__((used)) static u32 FUNC1(int disp_no, u32 reg, u32 val)
{
	return ((disp_no << 26) | FUNC0(25) | (val << 16) | (disp_no << 10) |
		(reg << 0));
}