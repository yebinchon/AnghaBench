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
struct vx_core {int clock_source; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_clock_source ) (struct vx_core*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_core*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vx_core*,int) ; 

__attribute__((used)) static void FUNC4(struct vx_core *chip, int source)
{
	unsigned long flags;

	/* we mute DAC to prevent clicks */
	FUNC3(chip, 1);
	FUNC0(&chip->lock, flags);
	chip->ops->set_clock_source(chip, source);
	chip->clock_source = source;
	FUNC1(&chip->lock, flags);
	/* unmute */
	FUNC3(chip, 0);
}