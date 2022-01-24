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
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct usbatm_channel {TYPE_1__ delay; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbatm_tasklet_schedule ; 

__attribute__((used)) static void FUNC3(struct usbatm_channel *channel)
{
	FUNC2(&channel->lock);
	FUNC0(&channel->list);
	channel->delay.function = usbatm_tasklet_schedule;
	channel->delay.data = (unsigned long) &channel->tasklet;
	FUNC1(&channel->delay);
}