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
struct mtpav_port {int mode; scalar_t__ output; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct mtpav {int num_ports; int /*<<< orphan*/  spinlock; struct mtpav_port* ports; TYPE_1__ timer; } ;

/* Variables and functions */
 int MTPAV_MODE_OUTPUT_TRIGGERED ; 
 int MTPAV_PIDX_BROADCAST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct mtpav*,struct mtpav_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	unsigned long flags;
	struct mtpav *chip = (struct mtpav *)data;
	int p;

	FUNC2(&chip->spinlock, flags);
	/* reprogram timer */
	chip->timer.expires = 1 + jiffies;
	FUNC0(&chip->timer);
	/* process each port */
	for (p = 0; p <= chip->num_ports * 2 + MTPAV_PIDX_BROADCAST; p++) {
		struct mtpav_port *portp = &chip->ports[p];
		if ((portp->mode & MTPAV_MODE_OUTPUT_TRIGGERED) && portp->output)
			FUNC1(chip, portp, portp->output);
	}
	FUNC3(&chip->spinlock, flags);
}