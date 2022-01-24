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
struct nilfs_sc_info {int /*<<< orphan*/  sc_state_lock; int /*<<< orphan*/ * sc_task; int /*<<< orphan*/  sc_wait_task; int /*<<< orphan*/  sc_wait_daemon; int /*<<< orphan*/  sc_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_SEGCTOR_QUIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct nilfs_sc_info *sci)
{
	sci->sc_state |= NILFS_SEGCTOR_QUIT;

	while (sci->sc_task) {
		FUNC3(&sci->sc_wait_daemon);
		FUNC1(&sci->sc_state_lock);
		FUNC2(sci->sc_wait_task, sci->sc_task == NULL);
		FUNC0(&sci->sc_state_lock);
	}
}