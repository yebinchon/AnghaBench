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
typedef  int u16 ;
struct epson1355_par {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct epson1355_par*,int) ; 

__attribute__((used)) static inline u16 FUNC1(struct epson1355_par *par, int index)
{
	u8 lo = FUNC0(par, index);
	u8 hi = FUNC0(par, index + 1);

	return (hi << 8) | lo;
}