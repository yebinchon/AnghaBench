#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {TYPE_1__* extif; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* enable_tearsync ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BLIZZARD_NDISP_CTRL_STATUS ; 
 TYPE_2__ blizzard ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	u8 b;

	blizzard.extif->enable_tearsync(0, 0);
	b = FUNC0(BLIZZARD_NDISP_CTRL_STATUS);
	b &= ~(1 << 3);
	FUNC1(BLIZZARD_NDISP_CTRL_STATUS, b);
	b = FUNC0(BLIZZARD_NDISP_CTRL_STATUS);
}