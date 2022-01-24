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
struct vx_rmh {int* Cmd; scalar_t__* Stat; } ;
struct vx_pipe {int /*<<< orphan*/  number; int /*<<< orphan*/  is_capture; } ;
struct vx_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CAN_START_PIPE ; 
 int /*<<< orphan*/  FUNC0 (struct vx_rmh*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vx_core*,struct vx_rmh*) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_rmh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vx_core *chip, struct vx_pipe *pipe)
{
	int err;
	struct vx_rmh rmh;
        
	FUNC0(&rmh, CMD_CAN_START_PIPE);
	FUNC2(&rmh, pipe->is_capture, pipe->number, 0);
	rmh.Cmd[0] |= 1;

	err = FUNC1(chip, &rmh); /* no lock needed for trigger */ 
	if (! err) {
		if (rmh.Stat[0])
			err = 1;
	}
	return err;
}