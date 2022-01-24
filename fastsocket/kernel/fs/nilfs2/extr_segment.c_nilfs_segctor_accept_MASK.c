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
struct nilfs_segctor_req {int /*<<< orphan*/  seq_accepted; scalar_t__ sb_err; scalar_t__ sc_err; } ;
struct nilfs_sc_info {scalar_t__ sc_timer; int /*<<< orphan*/  sc_state_lock; int /*<<< orphan*/  sc_seq_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nilfs_sc_info *sci,
				 struct nilfs_segctor_req *req)
{
	req->sc_err = req->sb_err = 0;
	FUNC1(&sci->sc_state_lock);
	req->seq_accepted = sci->sc_seq_request;
	FUNC2(&sci->sc_state_lock);

	if (sci->sc_timer)
		FUNC0(sci->sc_timer);
}