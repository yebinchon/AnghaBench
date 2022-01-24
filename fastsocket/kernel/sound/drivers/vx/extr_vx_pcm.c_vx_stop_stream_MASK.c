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
struct vx_pipe {int /*<<< orphan*/  number; int /*<<< orphan*/  is_capture; } ;
struct vx_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STOP_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct vx_rmh*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vx_core*,struct vx_rmh*) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_rmh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vx_core *chip, struct vx_pipe *pipe)
{
	struct vx_rmh rmh;

	FUNC0(&rmh, CMD_STOP_STREAM);
	FUNC2(&rmh, pipe->is_capture, pipe->number);
	return FUNC1(chip, &rmh); /* no lock needed for trigger */ 
}