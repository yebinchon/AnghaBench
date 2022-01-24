#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct atiixp_modem {int dummy; } ;
struct atiixp_dma {int /*<<< orphan*/  substream; TYPE_1__* ops; int /*<<< orphan*/  running; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STATE_XRUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct atiixp_modem *chip,
				struct atiixp_dma *dma)
{
	if (! dma->substream || ! dma->running)
		return;
	FUNC1("atiixp-modem: XRUN detected (DMA %d)\n", dma->ops->type);
	FUNC0(dma->substream, SNDRV_PCM_STATE_XRUN);
}