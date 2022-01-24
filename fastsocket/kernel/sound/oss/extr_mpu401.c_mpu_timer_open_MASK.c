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
struct mpu_config {int dummy; } ;
struct TYPE_2__ {int devlink; } ;

/* Variables and functions */
 int EBUSY ; 
 int curr_tempo ; 
 int curr_timebase ; 
 struct mpu_config* dev_conf ; 
 int hw_timebase ; 
 scalar_t__ metronome_mode ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__** sound_timer_devs ; 
 int timer_open ; 
 int /*<<< orphan*/  FUNC3 (struct mpu_config*) ; 

__attribute__((used)) static int FUNC4(int dev, int mode)
{
	int midi_dev = sound_timer_devs[dev]->devlink;
	struct mpu_config *devc= &dev_conf[midi_dev];

	if (timer_open)
		return -EBUSY;

	FUNC3(devc);
	curr_tempo = 50;
	FUNC0(midi_dev, 0xE0, 50);
	curr_timebase = hw_timebase = 120;
	FUNC1(midi_dev, 120);
	timer_open = 1;
	metronome_mode = 0;
	FUNC2(midi_dev);

	FUNC0(midi_dev, 0xe7, 0x04);	/* Send all clocks to host */
	FUNC0(midi_dev, 0x95, 0);	/* Enable clock to host */

	return 0;
}