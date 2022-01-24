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
 scalar_t__ ASMTYPE_TOPAZ ; 
 unsigned char TOPAZ_ASR_DISABLE ; 
 unsigned char TOPAZ_ASR_TOGGLE ; 
 unsigned char asr_disable_mask ; 
 int /*<<< orphan*/  asr_lock ; 
 int /*<<< orphan*/  asr_read_addr ; 
 unsigned char asr_toggle_mask ; 
 scalar_t__ asr_type ; 
 int /*<<< orphan*/  asr_write_addr ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned char reg;

	FUNC2(&asr_lock);
	reg = FUNC0(asr_read_addr);

	if (asr_type == ASMTYPE_TOPAZ)
		/* asr_write_addr == asr_read_addr */
		FUNC1(reg | TOPAZ_ASR_TOGGLE | TOPAZ_ASR_DISABLE,
		     asr_read_addr);
	else {
		FUNC1(reg | asr_toggle_mask, asr_write_addr);
		reg = FUNC0(asr_read_addr);

		FUNC1(reg | asr_disable_mask, asr_write_addr);
	}
	reg = FUNC0(asr_read_addr);
	FUNC3(&asr_lock);
}