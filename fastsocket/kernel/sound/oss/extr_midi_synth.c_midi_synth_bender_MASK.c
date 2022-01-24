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
struct TYPE_2__ {int midi_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int* prev_out_status ; 
 TYPE_1__** synth_devs ; 

void
FUNC3(int dev, int channel, int value)
{
	int             orig_dev = synth_devs[dev]->midi_dev;
	int             msg, prev_chn;

	if (channel < 0 || channel > 15)
		return;

	if (value < 0 || value > 16383)
		return;

	FUNC0(dev);

	msg = prev_out_status[orig_dev] & 0xf0;
	prev_chn = prev_out_status[orig_dev] & 0x0f;

	if (msg != 0xd0 || prev_chn != channel)		/*
							 * Test for running status
							 */
	  {
		  if (!FUNC2(orig_dev, 0xe0 | (channel & 0x0f)))
			  return;
		  FUNC1(orig_dev, 0xe0 | (channel & 0x0f));
	} else if (!FUNC2(orig_dev, value & 0x7f))
		return;

	FUNC1(orig_dev, value & 0x7f);
	FUNC1(orig_dev, (value >> 7) & 0x7f);
}