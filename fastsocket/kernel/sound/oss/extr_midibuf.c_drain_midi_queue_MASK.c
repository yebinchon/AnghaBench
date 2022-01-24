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
 TYPE_1__** midi_devs ; 
 int /*<<< orphan*/ * midi_sleeper ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(int dev)
{

	/*
	 * Give the Midi driver time to drain its output queues
	 */

	if (midi_devs[dev]->buffer_status != NULL)
		while (!FUNC1(current) && midi_devs[dev]->buffer_status(dev)) 
			FUNC0(&midi_sleeper[dev],
						       HZ/10);
}