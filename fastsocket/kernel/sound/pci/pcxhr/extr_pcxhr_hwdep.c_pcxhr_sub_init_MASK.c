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
struct pcxhr_rmh {int* cmd; int cmd_len; int* stat; } ;
struct pcxhr_mgr {int board_has_analog; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACCESS_IO_READ ; 
 scalar_t__ FUNC0 (struct pcxhr_mgr*) ; 
 int IO_NUM_REG_MUTE_OUT ; 
 int IO_NUM_REG_STATUS ; 
 int /*<<< orphan*/  REG_CONT_UNMUTE_INPUTS ; 
 int REG_STATUS_OPTIONS ; 
 int REG_STATUS_OPT_ANALOG_BOARD ; 
 int REG_STATUS_OPT_DAUGHTER_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct pcxhr_rmh*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pcxhr_mgr*,struct pcxhr_rmh*) ; 
 int FUNC3 (struct pcxhr_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct pcxhr_mgr *mgr)
{
	int err;
	struct pcxhr_rmh rmh;

	/* get options */
	FUNC1(&rmh, CMD_ACCESS_IO_READ);
	rmh.cmd[0] |= IO_NUM_REG_STATUS;
	rmh.cmd[1]  = REG_STATUS_OPTIONS;
	rmh.cmd_len = 2;
	err = FUNC2(mgr, &rmh);
	if (err)
		return err;

	if ((rmh.stat[1] & REG_STATUS_OPT_DAUGHTER_MASK) ==
	    REG_STATUS_OPT_ANALOG_BOARD)
		mgr->board_has_analog = 1;	/* analog addon board found */

	/* unmute inputs */
	err = FUNC3(mgr, REG_CONT_UNMUTE_INPUTS,
					  REG_CONT_UNMUTE_INPUTS, NULL);
	if (err)
		return err;
	/* unmute outputs (a write to IO_NUM_REG_MUTE_OUT mutes!) */
	FUNC1(&rmh, CMD_ACCESS_IO_READ);
	rmh.cmd[0] |= IO_NUM_REG_MUTE_OUT;
	if (FUNC0(mgr)) {
		rmh.cmd[1]  = 1;	/* unmute digital plugs */
		rmh.cmd_len = 2;
	}
	err = FUNC2(mgr, &rmh);
	return err;
}