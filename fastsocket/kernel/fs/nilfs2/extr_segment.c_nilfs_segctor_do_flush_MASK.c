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
struct nilfs_sc_info {int sc_flush_request; int /*<<< orphan*/  sc_state_lock; int /*<<< orphan*/  sc_wait_daemon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nilfs_sc_info *sci, int bn)
{
	FUNC0(&sci->sc_state_lock);
	if (!(sci->sc_flush_request & (1 << bn))) {
		unsigned long prev_req = sci->sc_flush_request;

		sci->sc_flush_request |= (1 << bn);
		if (!prev_req)
			FUNC2(&sci->sc_wait_daemon);
	}
	FUNC1(&sci->sc_state_lock);
}