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
struct saa7134_go7007 {void* bottom_dma; void* top_dma; int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; struct saa7134_dev* dev; } ;
struct saa7134_dev {TYPE_1__* pci; } ;
struct go7007 {struct saa7134_go7007* hpi_context; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int GPIO_COMMAND_ADDR ; 
 int GPIO_COMMAND_VIDEO ; 
 int HPI_ADDR_VIDEO_BUFFER ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPMODE0 ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPSTATUS0 ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPSTATUS2 ; 
 int /*<<< orphan*/  SAA7134_IRQ1 ; 
 int SAA7134_IRQ1_INTE_RA2_0 ; 
 int SAA7134_IRQ1_INTE_RA2_1 ; 
 int /*<<< orphan*/  SAA7134_MAIN_CTRL ; 
 int SAA7134_MAIN_CTRL_TE5 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int SAA7134_RS_CONTROL_BURST_MAX ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SAA7134_TS_DMA0 ; 
 int /*<<< orphan*/  SAA7134_TS_DMA1 ; 
 int /*<<< orphan*/  SAA7134_TS_DMA2 ; 
 int /*<<< orphan*/  SAA7134_TS_PARALLEL ; 
 int /*<<< orphan*/  SAA7134_TS_PARALLEL_SERIAL ; 
 int /*<<< orphan*/  SAA7134_TS_SERIAL1 ; 
 int SAA7134_VIDEO_PORT_CTRL0 ; 
 int SAA7134_VIDEO_PORT_CTRL4 ; 
 int FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct go7007 *go)
{
	struct saa7134_go7007 *saa = go->hpi_context;
	struct saa7134_dev *dev = saa->dev;

	saa->top_dma = FUNC5(&dev->pci->dev, FUNC12(saa->top),
			0, PAGE_SIZE, DMA_FROM_DEVICE);
	if (!saa->top_dma)
		return -ENOMEM;
	saa->bottom_dma = FUNC5(&dev->pci->dev,
			FUNC12(saa->bottom),
			0, PAGE_SIZE, DMA_FROM_DEVICE);
	if (!saa->bottom_dma) {
		FUNC6(&dev->pci->dev, saa->top_dma, PAGE_SIZE,
				DMA_FROM_DEVICE);
		return -ENOMEM;
	}

	FUNC11(SAA7134_VIDEO_PORT_CTRL0 >> 2, 0xA300B000);
	FUNC11(SAA7134_VIDEO_PORT_CTRL4 >> 2, 0x40000200);

	/* Set HPI interface for video */
	FUNC10(SAA7134_GPIO_GPMODE0, 0xff);
	FUNC10(SAA7134_GPIO_GPSTATUS0, HPI_ADDR_VIDEO_BUFFER);
	FUNC10(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_ADDR);
	FUNC10(SAA7134_GPIO_GPMODE0, 0x00);

	/* Enable TS interface */
	FUNC10(SAA7134_TS_PARALLEL, 0xe6);

	/* Reset TS interface */
	FUNC8(SAA7134_TS_SERIAL1, 0x01);
	FUNC7(SAA7134_TS_SERIAL1, 0x01);

	/* Set up transfer block size */
	FUNC10(SAA7134_TS_PARALLEL_SERIAL, 128 - 1);
	FUNC10(SAA7134_TS_DMA0, (PAGE_SIZE >> 7) - 1);
	FUNC10(SAA7134_TS_DMA1, 0);
	FUNC10(SAA7134_TS_DMA2, 0);

	/* Enable video streaming mode */
	FUNC10(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_VIDEO);

	FUNC11(FUNC0(5), FUNC4(saa->top_dma));
	FUNC11(FUNC1(5), FUNC4(saa->bottom_dma));
	FUNC11(FUNC3(5), 128);
	FUNC11(FUNC2(5), SAA7134_RS_CONTROL_BURST_MAX);

	/* Enable TS FIFO */
	FUNC9(SAA7134_MAIN_CTRL, SAA7134_MAIN_CTRL_TE5);

	/* Enable DMA IRQ */
	FUNC9(SAA7134_IRQ1,
			SAA7134_IRQ1_INTE_RA2_1 | SAA7134_IRQ1_INTE_RA2_0);

	return 0;
}