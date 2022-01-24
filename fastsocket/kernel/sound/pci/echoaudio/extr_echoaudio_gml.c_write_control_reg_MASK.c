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
typedef  int /*<<< orphan*/  u32 ;
struct echoaudio {TYPE_1__* comm_page; scalar_t__ digital_in_automute; } ;
struct TYPE_2__ {int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSP_VC_WRITE_CONTROL_REG ; 
 int EIO ; 
 int /*<<< orphan*/  GML_DIGITAL_IN_AUTO_MUTE ; 
 int /*<<< orphan*/  FUNC1 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC5(struct echoaudio *chip, u32 value, char force)
{
	/* Handle the digital input auto-mute */
	if (chip->digital_in_automute)
		value |= GML_DIGITAL_IN_AUTO_MUTE;
	else
		value &= ~GML_DIGITAL_IN_AUTO_MUTE;

	FUNC0(("write_control_reg: 0x%x\n", value));

	/* Write the control register */
	value = FUNC2(value);
	if (value != chip->comm_page->control_register || force) {
		if (FUNC4(chip))
			return -EIO;
		chip->comm_page->control_register = value;
		FUNC1(chip);
		return FUNC3(chip, DSP_VC_WRITE_CONTROL_REG);
	}
	return 0;
}