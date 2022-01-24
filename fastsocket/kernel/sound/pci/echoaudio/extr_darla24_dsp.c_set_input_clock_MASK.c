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
 scalar_t__ ECHO_CLOCK_ESYNC ; 
 scalar_t__ ECHO_CLOCK_INTERNAL ; 
 int EINVAL ; 
 int FUNC0 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct echoaudio *chip, u16 clock)
{
	if (FUNC1(clock != ECHO_CLOCK_INTERNAL &&
		       clock != ECHO_CLOCK_ESYNC))
		return -EINVAL;
	chip->input_clock = clock;
	return FUNC0(chip, chip->sample_rate);
}