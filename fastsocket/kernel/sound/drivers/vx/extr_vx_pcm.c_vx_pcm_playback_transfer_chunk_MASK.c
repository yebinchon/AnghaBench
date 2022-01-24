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
struct vx_pipe {int dummy; } ;
struct vx_core {int /*<<< orphan*/  lock; } ;
struct snd_pcm_runtime {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IRQ_CONNECT_STREAM_NEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vx_core*,struct vx_pipe*) ; 
 int /*<<< orphan*/  FUNC4 (struct vx_core*,struct snd_pcm_runtime*,struct vx_pipe*,int) ; 
 int FUNC5 (struct vx_core*,struct vx_pipe*) ; 
 int /*<<< orphan*/  FUNC6 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vx_core*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct vx_core *chip,
					  struct snd_pcm_runtime *runtime,
					  struct vx_pipe *pipe, int size)
{
	int space, err = 0;

	space = FUNC5(chip, pipe);
	if (space < 0) {
		/* disconnect the host, SIZE_HBUF command always switches to the stream mode */
		FUNC6(chip, IRQ_CONNECT_STREAM_NEXT);
		FUNC0("error hbuffer\n");
		return space;
	}
	if (space < size) {
		FUNC6(chip, IRQ_CONNECT_STREAM_NEXT);
		FUNC0("no enough hbuffer space %d\n", space);
		return -EIO; /* XRUN */
	}
		
	/* we don't need irqsave here, because this function
	 * is called from either trigger callback or irq handler
	 */
	FUNC1(&chip->lock); 
	FUNC4(chip, runtime, pipe, size);
	err = FUNC3(chip, pipe);
	/* disconnect the host, SIZE_HBUF command always switches to the stream mode */
	FUNC7(chip, IRQ_CONNECT_STREAM_NEXT);
	FUNC2(&chip->lock);
	return err;
}