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
typedef  int u64 ;
struct vx_rmh {int* Stat; } ;
struct vx_pipe {int cur_count; int position; int transferred; int /*<<< orphan*/  number; int /*<<< orphan*/  is_capture; } ;
struct vx_core {int dummy; } ;
struct snd_pcm_runtime {int buffer_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STREAM_SAMPLE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct vx_rmh*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vx_core*,struct vx_rmh*) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_rmh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vx_core *chip,
				   struct snd_pcm_runtime *runtime,
				   struct vx_pipe *pipe)
{
	struct vx_rmh rmh;
	int err, update;
	u64 count;

	FUNC0(&rmh, CMD_STREAM_SAMPLE_COUNT);
	FUNC2(&rmh, pipe->is_capture, pipe->number, 0);
	err = FUNC1(chip, &rmh);
	if (err < 0)
		return err;

	count = ((u64)(rmh.Stat[0] & 0xfffff) << 24) | (u64)rmh.Stat[1];
	update = (int)(count - pipe->cur_count);
	pipe->cur_count = count;
	pipe->position += update;
	if (pipe->position >= (int)runtime->buffer_size)
		pipe->position %= runtime->buffer_size;
	pipe->transferred += update;
	return 0;
}