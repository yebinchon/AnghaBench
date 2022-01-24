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
typedef  int /*<<< orphan*/  u32 ;
struct vx_pipe {int hw_ptr; int buffer_bytes; } ;
struct vx_core {int dummy; } ;
struct snd_pcm_runtime {scalar_t__ dma_area; } ;

/* Variables and functions */
 int /*<<< orphan*/  VX_DMA ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned long FUNC3 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vx_core*) ; 
 int /*<<< orphan*/  FUNC5 (struct vx_core*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vx_core *chip, struct snd_pcm_runtime *runtime,
			 struct vx_pipe *pipe, int count)
{
	int offset = pipe->hw_ptr;
	u32 *addr = (u32 *)(runtime->dma_area + offset);
	unsigned long port = FUNC3(chip, VX_DMA);

	if (FUNC2(count % 4))
		return;

	FUNC5(chip, 0);
	/* Transfer using pseudo-dma.
	 */
	if (offset + count > pipe->buffer_bytes) {
		int length = pipe->buffer_bytes - offset;
		count -= length;
		length >>= 2; /* in 32bit words */
		/* Transfer using pseudo-dma. */
		while (length-- > 0)
			*addr++ = FUNC1(FUNC0(port));
		addr = (u32 *)runtime->dma_area;
		pipe->hw_ptr = 0;
	}
	pipe->hw_ptr += count;
	count >>= 2; /* in 32bit words */
	/* Transfer using pseudo-dma. */
	while (count-- > 0)
		*addr++ = FUNC1(FUNC0(port));

	FUNC4(chip);
}