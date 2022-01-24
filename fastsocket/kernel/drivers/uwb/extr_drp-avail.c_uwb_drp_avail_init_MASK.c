#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pending; int /*<<< orphan*/  local; int /*<<< orphan*/  global; } ;
struct uwb_rc {TYPE_1__ drp_avail; } ;

/* Variables and functions */
 int /*<<< orphan*/  UWB_NUM_MAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct uwb_rc *rc)
{
	FUNC0(rc->drp_avail.global, UWB_NUM_MAS);
	FUNC0(rc->drp_avail.local, UWB_NUM_MAS);
	FUNC0(rc->drp_avail.pending, UWB_NUM_MAS);
}