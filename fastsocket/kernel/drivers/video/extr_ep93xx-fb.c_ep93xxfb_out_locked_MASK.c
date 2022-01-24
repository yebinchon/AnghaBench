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
struct ep93xx_fbi {int dummy; } ;

/* Variables and functions */
 unsigned int EP93XXFB_SWLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct ep93xx_fbi*,unsigned int,unsigned int) ; 

__attribute__((used)) static inline void FUNC1(struct ep93xx_fbi *fbi,
				       unsigned int val, unsigned int reg)
{
	/*
	 * We don't need a lock or delay here since the raster register
	 * block will remain unlocked until the next access.
	 */
	FUNC0(fbi, 0xaa, EP93XXFB_SWLOCK);
	FUNC0(fbi, val, reg);
}