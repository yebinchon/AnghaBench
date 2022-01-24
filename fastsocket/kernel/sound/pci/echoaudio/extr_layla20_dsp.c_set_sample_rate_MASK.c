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
typedef  int u32 ;
struct echoaudio {scalar_t__ input_clock; int sample_rate; TYPE_1__* comm_page; } ;
struct TYPE_2__ {void* sample_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSP_VC_SET_LAYLA_SAMPLE_RATE ; 
 scalar_t__ ECHO_CLOCK_INTERNAL ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct echoaudio*) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC6(struct echoaudio *chip, u32 rate)
{
	if (FUNC4(rate < 8000 || rate > 50000))
		return -EINVAL;

	/* Only set the clock for internal mode. Do not return failure,
	   simply treat it as a non-event. */
	if (chip->input_clock != ECHO_CLOCK_INTERNAL) {
		FUNC0(("set_sample_rate: Cannot set sample rate - "
			"clock not set to CLK_CLOCKININTERNAL\n"));
		chip->comm_page->sample_rate = FUNC2(rate);
		chip->sample_rate = rate;
		return 0;
	}

	if (FUNC5(chip))
		return -EIO;

	FUNC0(("set_sample_rate(%d)\n", rate));
	chip->sample_rate = rate;
	chip->comm_page->sample_rate = FUNC2(rate);
	FUNC1(chip);
	return FUNC3(chip, DSP_VC_SET_LAYLA_SAMPLE_RATE);
}