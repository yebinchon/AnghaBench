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
typedef  int /*<<< orphan*/  u32 ;
struct aty128fb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_CNTL_DATA ; 
 int /*<<< orphan*/  CLOCK_CNTL_INDEX ; 
 unsigned int PLL_WR_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned int pll_index, u32 val,
			const struct aty128fb_par *par)
{
	FUNC0(CLOCK_CNTL_INDEX, (pll_index & 0x3F) | PLL_WR_EN);
	FUNC1(CLOCK_CNTL_DATA, val);
}