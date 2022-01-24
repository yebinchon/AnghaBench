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
struct ssp_device {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ PXA25x_SSP ; 
 int /*<<< orphan*/  SSCR0 ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (struct ssp_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct ssp_device *ssp)
{
	u32 sscr0 = FUNC1(ssp, SSCR0);
	u32 div;

	if (FUNC0() && ssp->type == PXA25x_SSP)
		div = ((sscr0 >> 8) & 0xff) * 2 + 2;
	else
		div = ((sscr0 >> 8) & 0xfff) + 1;
	return div;
}