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
struct atyfb_par {scalar_t__ clk_wr_offset; } ;

/* Variables and functions */
 scalar_t__ CLOCK_CNTL ; 
 int CLOCK_STROBE ; 
 int FUNC0 (scalar_t__,struct atyfb_par const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,struct atyfb_par const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(const struct atyfb_par *par)
{
	u8 tmp;

	FUNC2(26);

	tmp = FUNC0(CLOCK_CNTL, par);
	FUNC1(CLOCK_CNTL + par->clk_wr_offset, tmp | CLOCK_STROBE, par);
	return;
}