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
typedef  scalar_t__ u16 ;
struct echoaudio {int /*<<< orphan*/  sample_rate; scalar_t__ input_clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ECHO_CLOCK_INTERNAL ; 
 scalar_t__ ECHO_CLOCK_SPDIF ; 
 int EINVAL ; 
 int FUNC1 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct echoaudio *chip, u16 clock)
{
	FUNC0(("set_input_clock(%d)\n", clock));
	if (FUNC2(clock != ECHO_CLOCK_INTERNAL &&
		       clock != ECHO_CLOCK_SPDIF))
		return -EINVAL;

	chip->input_clock = clock;
	return FUNC1(chip, chip->sample_rate);
}