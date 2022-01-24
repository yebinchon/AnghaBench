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
struct TYPE_2__ {scalar_t__ expires; } ;
struct hdsp_midi {int /*<<< orphan*/  lock; TYPE_1__ timer; scalar_t__ istimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct hdsp_midi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct hdsp_midi *hmidi = (struct hdsp_midi *) data;
	unsigned long flags;

	FUNC1(hmidi);
	FUNC2 (&hmidi->lock, flags);

	/* this does not bump hmidi->istimer, because the
	   kernel automatically removed the timer when it
	   expired, and we are now adding it back, thus
	   leaving istimer wherever it was set before.
	*/

	if (hmidi->istimer) {
		hmidi->timer.expires = 1 + jiffies;
		FUNC0(&hmidi->timer);
	}

	FUNC3 (&hmidi->lock, flags);
}