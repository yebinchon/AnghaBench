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
typedef  int /*<<< orphan*/  u32 ;
struct txx9dmac_slave {int reg_width; scalar_t__ rx_reg; scalar_t__ tx_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct txx9aclc_soc_device {TYPE_1__ soc_dev; } ;
struct txx9aclc_plat_drvdata {scalar_t__ physbase; } ;
struct txx9aclc_dmadata {scalar_t__ stream; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  dma_chan; int /*<<< orphan*/  dma_lock; struct txx9dmac_slave dma_slave; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 scalar_t__ ACAUDIDAT ; 
 scalar_t__ ACAUDODAT ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int EBUSY ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct txx9aclc_dmadata*) ; 
 int /*<<< orphan*/  filter ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  txx9aclc_dma_tasklet ; 
 struct txx9aclc_plat_drvdata* FUNC6 (struct txx9aclc_soc_device*) ; 

__attribute__((used)) static int FUNC7(struct txx9aclc_soc_device *dev,
			     struct txx9aclc_dmadata *dmadata)
{
	struct txx9aclc_plat_drvdata *drvdata = FUNC6(dev);
	struct txx9dmac_slave *ds = &dmadata->dma_slave;
	dma_cap_mask_t mask;

	FUNC4(&dmadata->dma_lock);

	ds->reg_width = sizeof(u32);
	if (dmadata->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		ds->tx_reg = drvdata->physbase + ACAUDODAT;
		ds->rx_reg = 0;
	} else {
		ds->tx_reg = 0;
		ds->rx_reg = drvdata->physbase + ACAUDIDAT;
	}

	/* Try to grab a DMA channel */
	FUNC2(mask);
	FUNC1(DMA_SLAVE, mask);
	dmadata->dma_chan = FUNC3(mask, filter, dmadata);
	if (!dmadata->dma_chan) {
		FUNC0(dev->soc_dev.dev,
			"DMA channel for %s is not available\n",
			dmadata->stream == SNDRV_PCM_STREAM_PLAYBACK ?
			"playback" : "capture");
		return -EBUSY;
	}
	FUNC5(&dmadata->tasklet, txx9aclc_dma_tasklet,
		     (unsigned long)dmadata);
	return 0;
}