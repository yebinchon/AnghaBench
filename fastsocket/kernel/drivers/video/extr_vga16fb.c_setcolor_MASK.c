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

/* Variables and functions */
 int /*<<< orphan*/  VGA_GFX_D ; 
 int /*<<< orphan*/  VGA_GFX_SR_VALUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC2(int color)
{
	int oldcolor;

	oldcolor = FUNC0(VGA_GFX_SR_VALUE);
	FUNC1(VGA_GFX_D, color);
	return oldcolor;
}