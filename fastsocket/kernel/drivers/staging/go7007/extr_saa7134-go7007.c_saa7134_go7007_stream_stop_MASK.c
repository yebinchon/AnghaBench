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
struct saa7134_go7007 {int /*<<< orphan*/  bottom_dma; int /*<<< orphan*/  top_dma; struct saa7134_dev* dev; } ;
struct saa7134_dev {TYPE_1__* pci; } ;
struct go7007 {struct saa7134_go7007* hpi_context; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SAA7134_IRQ1 ; 
 int SAA7134_IRQ1_INTE_RA2_0 ; 
 int SAA7134_IRQ1_INTE_RA2_1 ; 
 int /*<<< orphan*/  SAA7134_MAIN_CTRL ; 
 int SAA7134_MAIN_CTRL_TE5 ; 
 int /*<<< orphan*/  SAA7134_TS_PARALLEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct go7007 *go)
{
	struct saa7134_go7007 *saa = go->hpi_context;
	struct saa7134_dev *dev;

	if (!saa)
		return -EINVAL;
	dev = saa->dev;
	if (!dev)
		return -EINVAL;

	/* Shut down TS FIFO */
	FUNC2(SAA7134_MAIN_CTRL, SAA7134_MAIN_CTRL_TE5);

	/* Disable DMA IRQ */
	FUNC2(SAA7134_IRQ1,
			SAA7134_IRQ1_INTE_RA2_1 | SAA7134_IRQ1_INTE_RA2_0);

	/* Disable TS interface */
	FUNC1(SAA7134_TS_PARALLEL, 0x80);

	FUNC0(&dev->pci->dev, saa->top_dma, PAGE_SIZE,
			DMA_FROM_DEVICE);
	FUNC0(&dev->pci->dev, saa->bottom_dma, PAGE_SIZE,
			DMA_FROM_DEVICE);

	return 0;
}