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
struct TYPE_2__ {int /*<<< orphan*/  pending; } ;
struct uwb_rc {TYPE_1__ drp_avail; } ;
struct uwb_mas_bm {int /*<<< orphan*/  bm; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  UWB_NUM_MAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_rc*,struct uwb_mas_bm*) ; 

int FUNC3(struct uwb_rc *rc, struct uwb_mas_bm *mas)
{
	struct uwb_mas_bm avail;

	FUNC2(rc, &avail);
	if (!FUNC1(mas->bm, avail.bm, UWB_NUM_MAS))
		return -EBUSY;

	FUNC0(rc->drp_avail.pending, rc->drp_avail.pending, mas->bm, UWB_NUM_MAS);
	return 0;
}