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
typedef  int /*<<< orphan*/  u8 ;
struct epson1355_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_LUT_ADDR ; 
 int /*<<< orphan*/  REG_LUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct epson1355_par*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct epson1355_par *par, u8 index, u8 r, u8 g, u8 b)
{
	FUNC0(par, index, REG_LUT_ADDR);
	FUNC0(par, r, REG_LUT_DATA);
	FUNC0(par, g, REG_LUT_DATA);
	FUNC0(par, b, REG_LUT_DATA);
}