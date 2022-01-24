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
typedef  unsigned long u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long*) ; 

__attribute__((used)) static inline void FUNC1(unsigned long v, unsigned long *a)
{
	u16 *p = (u16 *) a;
	u16 l = v & 0xffff;
	u16 h = v >> 16;

	FUNC0(l, p);
	FUNC0(h, p + 1);
}