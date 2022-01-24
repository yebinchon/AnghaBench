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
typedef  int u32 ;
struct epson1355_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct epson1355_par*,int,int) ; 

__attribute__((used)) static inline void FUNC1(struct epson1355_par *par, u32 data, int index)
{
	u8 b0 = data & 0xff;
	u8 b1 = (data >> 8) & 0xff;
	u8 b2 = (data >> 16) & 0x0f;

	FUNC0(par, b0, index);
	FUNC0(par, b1, index + 1);
	FUNC0(par, b2, index + 2);
}