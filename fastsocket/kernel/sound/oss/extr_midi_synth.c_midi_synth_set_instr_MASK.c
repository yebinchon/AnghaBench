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
 TYPE_1__** synth_devs ; 

int
FUNC3(int dev, int channel, int instr_no)
{
	int             orig_dev = synth_devs[dev]->midi_dev;

	if (instr_no < 0 || instr_no > 127)
		instr_no = 0;
	if (channel < 0 || channel > 15)
		return 0;

	FUNC0(dev);

	if (!FUNC2(orig_dev, 0xc0 | (channel & 0x0f)))
		return 0;
	FUNC1(orig_dev, 0xc0 | (channel & 0x0f));	/*
							 * Program change
							 */
	FUNC1(orig_dev, instr_no);

	return 0;
}