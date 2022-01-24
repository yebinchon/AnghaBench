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
struct TYPE_2__ {scalar_t__ (* buffer_status ) (int) ;} ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int max_mididev ; 
 TYPE_1__** midi_devs ; 
 scalar_t__* midi_opened ; 
 scalar_t__* midi_written ; 
 int /*<<< orphan*/  seq_sleeper ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void)
{
	int i, n;

	/*
	 * Give the Midi drivers time to drain their output queues
	 */

	n = 1;

	while (!FUNC1(current) && n)
	{
		n = 0;

		for (i = 0; i < max_mididev; i++)
			if (midi_opened[i] && midi_written[i])
				if (midi_devs[i]->buffer_status != NULL)
					if (midi_devs[i]->buffer_status(i))
						n++;

		/*
		 * Let's have a delay
		 */

 		if (n)
 			FUNC0(&seq_sleeper,
						       HZ/10);
	}
}