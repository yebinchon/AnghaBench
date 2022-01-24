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
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* close ) (int) ;int /*<<< orphan*/  (* outputc ) (int,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int OPEN_READ ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__** midi_devs ; 
 int /*<<< orphan*/ ** midi_in_buf ; 
 int /*<<< orphan*/ ** midi_out_buf ; 
 int /*<<< orphan*/ * midi_sleeper ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int num_midis ; 
 scalar_t__ open_devs ; 
 int /*<<< orphan*/  poll_timer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct file*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(int dev, struct file *file)
{
	int mode;

	dev = dev >> 4;
	mode = FUNC8(file);

	if (dev < 0 || dev >= num_midis || midi_devs[dev] == NULL)
		return;

	/*
	 * Wait until the queue is empty
	 */

	if (mode != OPEN_READ)
	{
		midi_devs[dev]->outputc(dev, 0xfe);	/*
							   * Active sensing to shut the
							   * devices
							 */

		while (!FUNC5(current) && FUNC0(midi_out_buf[dev]))
			  FUNC3(&midi_sleeper[dev]);
		/*
		 *	Sync
		 */

		FUNC2(dev);	/*
					 * Ensure the output queues are empty
					 */
	}

	midi_devs[dev]->close(dev);

	open_devs--;
	if (open_devs == 0)
		FUNC1(&poll_timer);
	FUNC9(midi_in_buf[dev]);
	FUNC9(midi_out_buf[dev]);
	midi_in_buf[dev] = NULL;
	midi_out_buf[dev] = NULL;

	FUNC4(midi_devs[dev]->owner);
}