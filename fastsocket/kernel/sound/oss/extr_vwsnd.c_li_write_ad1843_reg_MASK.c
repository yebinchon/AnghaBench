#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ lithium_t ;

/* Variables and functions */
 int LI_CC_DIR_WR ; 
 int /*<<< orphan*/  LI_CODEC_COMMAND ; 
 int /*<<< orphan*/  LI_CODEC_DATA ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(lithium_t *lith, int reg, int newval)
{
	FUNC2(&lith->lock);
	{
		if (FUNC0(lith) == 0) {
			FUNC1(lith, LI_CODEC_DATA, newval);
			FUNC1(lith, LI_CODEC_COMMAND, LI_CC_DIR_WR | reg);
		}
	}
	FUNC3(&lith->lock);
}