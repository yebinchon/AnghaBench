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
struct echoaudio {TYPE_1__* comm_page; int /*<<< orphan*/  sample_rate; } ;
struct TYPE_2__ {int /*<<< orphan*/  sample_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_VC_UPDATE_CLOCKS ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC4(struct echoaudio *chip, u32 rate)
{
	if (FUNC3(chip))
		return -EIO;

	chip->sample_rate = rate;
	chip->comm_page->sample_rate = FUNC1(rate);
	FUNC0(chip);
	return FUNC2(chip, DSP_VC_UPDATE_CLOCKS);
}