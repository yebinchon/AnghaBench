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
struct epson1355_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_DISPLAY_MODE ; 
 int FUNC0 (struct epson1355_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct epson1355_par*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct epson1355_par *par, int enable)
{
	u8 mode = FUNC0(par, REG_DISPLAY_MODE);

	if (enable)
		mode |= 1;
	else
		mode &= ~1;

	FUNC1(par, mode, REG_DISPLAY_MODE);
}