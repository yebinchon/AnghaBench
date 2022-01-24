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
struct nilfs_sc_info {int sc_state; int /*<<< orphan*/  sc_state_lock; TYPE_1__* sc_timer; scalar_t__ sc_interval; } ;
struct TYPE_2__ {scalar_t__ expires; } ;

/* Variables and functions */
 int NILFS_SEGCTOR_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nilfs_sc_info *sci)
{
	FUNC1(&sci->sc_state_lock);
	if (sci->sc_timer && !(sci->sc_state & NILFS_SEGCTOR_COMMIT)) {
		sci->sc_timer->expires = jiffies + sci->sc_interval;
		FUNC0(sci->sc_timer);
		sci->sc_state |= NILFS_SEGCTOR_COMMIT;
	}
	FUNC2(&sci->sc_state_lock);
}