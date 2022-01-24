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
 scalar_t__ SCx200_WDT_WDTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ scx200_cb_base ; 
 int /*<<< orphan*/  scx_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdto_restart ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC1(&scx_lock);
	FUNC0(wdto_restart, scx200_cb_base + SCx200_WDT_WDTO);
	FUNC2(&scx_lock);
}