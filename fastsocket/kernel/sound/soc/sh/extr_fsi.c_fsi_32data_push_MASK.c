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
struct snd_pcm_runtime {scalar_t__ dma_area; } ;
struct fsi_priv {int byte_offset; scalar_t__ base; int /*<<< orphan*/  dma_chan; } ;

/* Variables and functions */
 scalar_t__ DODT ; 
 int SM_INC ; 
 int TM_BUR ; 
 int TS_32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct fsi_priv *fsi,
			   struct snd_pcm_runtime *runtime,
			   int send)
{
	u32 *dma_start;

	/* get dma start position for FSI */
	dma_start = (u32 *)runtime->dma_area;
	dma_start += fsi->byte_offset / 4;

	FUNC1(fsi->dma_chan);
	FUNC0(fsi->dma_chan, (SM_INC|0x400|TS_32|TM_BUR));
	FUNC2(fsi->dma_chan, (u32)dma_start,
		  (u32)(fsi->base + DODT), send * 4);
}