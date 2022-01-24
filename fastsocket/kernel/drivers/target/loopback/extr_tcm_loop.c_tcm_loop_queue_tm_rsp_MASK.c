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
struct tcm_loop_tmr {int /*<<< orphan*/  tl_tmr_wait; int /*<<< orphan*/  tmr_complete; } ;
struct se_tmr_req {struct tcm_loop_tmr* fabric_tmr_ptr; } ;
struct se_cmd {struct se_tmr_req* se_tmr_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct se_cmd *se_cmd)
{
	struct se_tmr_req *se_tmr = se_cmd->se_tmr_req;
	struct tcm_loop_tmr *tl_tmr = se_tmr->fabric_tmr_ptr;
	/*
	 * The SCSI EH thread will be sleeping on se_tmr->tl_tmr_wait, go ahead
	 * and wake up the wait_queue_head_t in tcm_loop_device_reset()
	 */
	FUNC0(&tl_tmr->tmr_complete, 1);
	FUNC1(&tl_tmr->tl_tmr_wait);
	return 0;
}