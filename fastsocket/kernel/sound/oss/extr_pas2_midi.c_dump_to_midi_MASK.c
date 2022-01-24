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

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int) ; 

__attribute__((used)) static int FUNC2(unsigned char midi_byte)
{
	int fifo_space, x;

	fifo_space = ((x = FUNC0(0x1B89)) >> 4) & 0x0f;

	/*
	 * The MIDI FIFO space register and it's documentation is nonunderstandable.
	 * There seem to be no way to differentiate between buffer full and buffer
	 * empty situations. For this reason we don't never write the buffer
	 * completely full. In this way we can assume that 0 (or is it 15)
	 * means that the buffer is empty.
	 */

	if (fifo_space < 2 && fifo_space != 0)	/* Full (almost) */
		return 0;	/* Ask upper layers to retry after some time */

	FUNC1(midi_byte, 0x178A);

	return 1;
}