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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ o2hb_debug_dir ; 
 scalar_t__ o2hb_debug_livenodes ; 

void FUNC1(void)
{
	if (o2hb_debug_livenodes)
		FUNC0(o2hb_debug_livenodes);
	if (o2hb_debug_dir)
		FUNC0(o2hb_debug_dir);
}