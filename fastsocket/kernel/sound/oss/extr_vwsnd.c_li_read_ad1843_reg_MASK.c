#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ lithium_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int,int) ; 
 int LI_CC_DIR_RD ; 
 int /*<<< orphan*/  LI_CODEC_COMMAND ; 
 int /*<<< orphan*/  LI_CODEC_DATA ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(lithium_t *lith, int reg)
{
	int val;

	FUNC0(!FUNC2());
	FUNC6(&lith->lock);
	{
		val = FUNC3(lith);
		if (val == 0) {
			FUNC5(lith, LI_CODEC_COMMAND, LI_CC_DIR_RD | reg);
			val = FUNC3(lith);
		}
		if (val == 0)
			val = FUNC4(lith, LI_CODEC_DATA);
	}
	FUNC7(&lith->lock);

	FUNC1("li_read_ad1843_reg(lith=0x%p, reg=%d) returns 0x%04x\n",
	      lith, reg, val);

	return val;
}