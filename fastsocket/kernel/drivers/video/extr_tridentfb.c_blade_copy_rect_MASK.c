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
typedef  scalar_t__ u32 ;
struct tridentfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  DST1 ; 
 int /*<<< orphan*/  DST2 ; 
 int /*<<< orphan*/  ROP ; 
 scalar_t__ ROP_S ; 
 int /*<<< orphan*/  SRC1 ; 
 int /*<<< orphan*/  SRC2 ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tridentfb_par*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct tridentfb_par *par,
			    u32 x1, u32 y1, u32 x2, u32 y2, u32 w, u32 h)
{
	int direction = 2;
	u32 s1 = FUNC0(x1, y1);
	u32 s2 = FUNC0(x1 + w - 1, y1 + h - 1);
	u32 d1 = FUNC0(x2, y2);
	u32 d2 = FUNC0(x2 + w - 1, y2 + h - 1);

	if ((y1 > y2) || ((y1 == y2) && (x1 > x2)))
		direction = 0;

	FUNC1(par, ROP, ROP_S);
	FUNC1(par, CMD, 0xE0000000 | 1 << 19 | 1 << 4 | 1 << 2 | direction);

	FUNC1(par, SRC1, direction ? s2 : s1);
	FUNC1(par, SRC2, direction ? s1 : s2);
	FUNC1(par, DST1, direction ? d2 : d1);
	FUNC1(par, DST2, direction ? d1 : d2);
}