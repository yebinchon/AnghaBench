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
struct hdsp {int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
#define  HDSP_CLOCK_SOURCE_AUTOSYNC 137 
#define  HDSP_CLOCK_SOURCE_INTERNAL_128KHZ 136 
#define  HDSP_CLOCK_SOURCE_INTERNAL_176_4KHZ 135 
#define  HDSP_CLOCK_SOURCE_INTERNAL_192KHZ 134 
#define  HDSP_CLOCK_SOURCE_INTERNAL_32KHZ 133 
#define  HDSP_CLOCK_SOURCE_INTERNAL_44_1KHZ 132 
#define  HDSP_CLOCK_SOURCE_INTERNAL_48KHZ 131 
#define  HDSP_CLOCK_SOURCE_INTERNAL_64KHZ 130 
#define  HDSP_CLOCK_SOURCE_INTERNAL_88_2KHZ 129 
#define  HDSP_CLOCK_SOURCE_INTERNAL_96KHZ 128 
 int /*<<< orphan*/  HDSP_ClockModeMaster ; 
 int /*<<< orphan*/  HDSP_controlRegister ; 
 int FUNC0 (struct hdsp*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdsp*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hdsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hdsp *hdsp, int mode)
{
	int rate;
	switch (mode) {
	case HDSP_CLOCK_SOURCE_AUTOSYNC:
		if (FUNC0(hdsp) != 0) {
		    if (!FUNC1(hdsp, FUNC0(hdsp), 1)) {
			hdsp->control_register &= ~HDSP_ClockModeMaster;
			FUNC2(hdsp, HDSP_controlRegister, hdsp->control_register);
			return 0;
		    }
		}
		return -1;
	case HDSP_CLOCK_SOURCE_INTERNAL_32KHZ:
		rate = 32000;
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_44_1KHZ:
		rate = 44100;
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_48KHZ:
		rate = 48000;
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_64KHZ:
		rate = 64000;
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_88_2KHZ:
		rate = 88200;
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_96KHZ:
		rate = 96000;
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_128KHZ:
		rate = 128000;
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_176_4KHZ:
		rate = 176400;
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_192KHZ:
		rate = 192000;
		break;
	default:
		rate = 48000;
	}
	hdsp->control_register |= HDSP_ClockModeMaster;
	FUNC2(hdsp, HDSP_controlRegister, hdsp->control_register);
	FUNC1(hdsp, rate, 1);
	return 0;
}