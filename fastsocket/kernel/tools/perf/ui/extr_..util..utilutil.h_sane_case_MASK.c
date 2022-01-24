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
 int /*<<< orphan*/  GIT_ALPHA ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(int x, int high)
{
	if (FUNC0(x, GIT_ALPHA))
		x = (x & ~0x20) | high;
	return x;
}