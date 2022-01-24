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
struct tridentfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRAWFL ; 
 int /*<<< orphan*/  OLDCLR ; 
 int OLDCMD ; 
 int /*<<< orphan*/  OLDDIM ; 
 int /*<<< orphan*/  OLDDST ; 
 int ROP_P ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tridentfb_par*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tridentfb_par*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct tridentfb_par *par,
			   u32 x, u32 y, u32 w, u32 h, u32 c, u32 rop)
{
	FUNC1(par, ROP_P, 0x2127);
	FUNC2(par, OLDCLR, c);
	FUNC2(par, DRAWFL, 0x4020);
	FUNC2(par, OLDDIM, FUNC0(w - 1, h - 1));
	FUNC2(par, OLDDST, FUNC0(x, y));
	FUNC1(par, 1, OLDCMD);
}