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
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  hfa384x_t ;
typedef  int /*<<< orphan*/  ctlx_usercb_t ;

/* Variables and functions */
 int /*<<< orphan*/  hfa384x_cb_status ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

int
FUNC1(hfa384x_t *hw,
			     u16 rid,
			     void *buf,
			     u16 len, ctlx_usercb_t usercb, void *usercb_data)
{
	return FUNC0(hw, rid, buf, len,
				    hfa384x_cb_status, usercb, usercb_data);
}