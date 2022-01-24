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
struct vx_rmh {int* Cmd; size_t LgCmd; } ;
struct vx_pipe {int number; scalar_t__ is_capture; } ;
struct vx_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FORMAT_STREAM_IN ; 
 int /*<<< orphan*/  CMD_FORMAT_STREAM_OUT ; 
 int FIELD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct vx_rmh*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vx_core*,struct vx_rmh*) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_core*,struct vx_rmh*,struct vx_pipe*) ; 

__attribute__((used)) static int FUNC3(struct vx_core *chip, struct vx_pipe *pipe,
				unsigned int data)
{
	struct vx_rmh rmh;

	FUNC0(&rmh, pipe->is_capture ?
		    CMD_FORMAT_STREAM_IN : CMD_FORMAT_STREAM_OUT);
	rmh.Cmd[0] |= pipe->number << FIELD_SIZE;

        /* Command might be longer since we may have to add a timestamp */
	FUNC2(chip, &rmh, pipe);

	rmh.Cmd[rmh.LgCmd] = (data & 0xFFFFFF00) >> 8;
	rmh.Cmd[rmh.LgCmd + 1] = (data & 0xFF) << 16 /*| (datal & 0xFFFF00) >> 8*/;
	rmh.LgCmd += 2;
    
	return FUNC1(chip, &rmh);
}