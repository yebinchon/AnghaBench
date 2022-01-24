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
struct cfb_info {int func_use_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT_FUNC_CTL ; 
 int EXT_FUNC_CTL_EXTREGENBL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct cfb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct cfb_info*) ; 

void FUNC2(struct cfb_info *cfb)
{
	cfb->func_use_count += 1;

	if (cfb->func_use_count == 1) {
		int old;

		old = FUNC0(EXT_FUNC_CTL, cfb);
		old |= EXT_FUNC_CTL_EXTREGENBL;
		FUNC1(EXT_FUNC_CTL, old, cfb);
	}
}