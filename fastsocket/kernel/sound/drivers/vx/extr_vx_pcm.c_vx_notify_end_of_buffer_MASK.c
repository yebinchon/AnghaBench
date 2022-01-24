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
struct vx_rmh {int dummy; } ;
struct vx_pipe {int /*<<< orphan*/  number; } ;
struct vx_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_NOTIFY_END_OF_BUFFER ; 
 int /*<<< orphan*/  IRQ_PAUSE_START_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct vx_rmh*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vx_core*,struct vx_rmh*) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vx_rmh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vx_core *chip, struct vx_pipe *pipe)
{
	int err;
	struct vx_rmh rmh;  /* use a temporary rmh here */

	/* Toggle Dsp Host Interface into Message mode */
	FUNC2(chip, IRQ_PAUSE_START_CONNECT);
	FUNC0(&rmh, CMD_NOTIFY_END_OF_BUFFER);
	FUNC3(&rmh, 0, pipe->number);
	err = FUNC1(chip, &rmh);
	if (err < 0)
		return err;
	/* Toggle Dsp Host Interface back to sound transfer mode */
	FUNC2(chip, IRQ_PAUSE_START_CONNECT);
	return 0;
}