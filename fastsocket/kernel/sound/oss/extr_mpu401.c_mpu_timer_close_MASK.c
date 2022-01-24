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
struct TYPE_2__ {int devlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__** sound_timer_devs ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ timer_open ; 
 scalar_t__ tmr_running ; 

__attribute__((used)) static void FUNC2(int dev)
{
	int midi_dev = sound_timer_devs[dev]->devlink;

	timer_open = tmr_running = 0;
	FUNC0(midi_dev, 0x15, 0);	/* Stop all */
	FUNC0(midi_dev, 0x94, 0);	/* Disable clock to host */
	FUNC0(midi_dev, 0x8c, 0);	/* Disable measure end messages to host */
	FUNC1(midi_dev);
}