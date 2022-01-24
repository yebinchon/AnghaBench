#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sram_channel {int dummy; } ;
struct cx25821_dev {int pci_irqmask; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma; } ;
struct cx25821_buffer {int bpl; TYPE_1__ risc; } ;
struct TYPE_5__ {struct cx25821_dev* dev; int /*<<< orphan*/  count; struct cx25821_buffer* buf; } ;
typedef  TYPE_2__ snd_cx25821_card_t ;

/* Variables and functions */
 size_t AUDIO_SRAM_CHANNEL ; 
 int /*<<< orphan*/  AUD_A_CFG ; 
 int /*<<< orphan*/  AUD_A_GPCNT_CTL ; 
 int /*<<< orphan*/  AUD_A_INT_MSK ; 
 int /*<<< orphan*/  AUD_A_INT_STAT ; 
 int /*<<< orphan*/  AUD_A_LNGTH ; 
 int /*<<< orphan*/  AUD_INT_DMA_CTL ; 
 int FLD_AUD_CLK_ENABLE ; 
 int FLD_AUD_DST_A_FIFO_EN ; 
 int FLD_AUD_DST_A_RISC_EN ; 
 int FLD_AUD_DST_ENABLE ; 
 int FLD_AUD_DST_OF ; 
 int FLD_AUD_DST_OPC_ERR ; 
 int FLD_AUD_DST_PK_MODE ; 
 int FLD_AUD_DST_RISCI1 ; 
 int FLD_AUD_DST_SYNC ; 
 int GP_COUNT_CONTROL_RESET ; 
 int /*<<< orphan*/  PCI_INT_MSK ; 
 int PCI_MSK_AUD_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx25821_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx25821_dev*,struct sram_channel*,int,int /*<<< orphan*/ ) ; 
 struct sram_channel* cx25821_sram_channels ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(snd_cx25821_card_t * chip)
{
	struct cx25821_buffer *buf = chip->buf;
	struct cx25821_dev *dev = chip->dev;
	struct sram_channel *audio_ch =
	    &cx25821_sram_channels[AUDIO_SRAM_CHANNEL];
	u32 tmp = 0;

	// enable output on the GPIO 0 for the MCLK ADC (Audio)
	FUNC1(chip->dev, 0, 0);

	/* Make sure RISC/FIFO are off before changing FIFO/RISC settings */
	FUNC3(AUD_INT_DMA_CTL,
		 FLD_AUD_DST_A_RISC_EN | FLD_AUD_DST_A_FIFO_EN);

	/* setup fifo + format - out channel */
	FUNC2(chip->dev, audio_ch, buf->bpl,
					 buf->risc.dma);

	/* sets bpl size */
	FUNC6(AUD_A_LNGTH, buf->bpl);

	/* reset counter */
	FUNC6(AUD_A_GPCNT_CTL, GP_COUNT_CONTROL_RESET);	//GP_COUNT_CONTROL_RESET = 0x3
	FUNC0(&chip->count, 0);

	//Set the input mode to 16-bit
	tmp = FUNC4(AUD_A_CFG);
	FUNC6(AUD_A_CFG,
		 tmp | FLD_AUD_DST_PK_MODE | FLD_AUD_DST_ENABLE |
		 FLD_AUD_CLK_ENABLE);

	//printk(KERN_INFO "DEBUG: Start audio DMA, %d B/line, cmds_start(0x%x)= %d lines/FIFO, %d periods, %d "
	//      "byte buffer\n", buf->bpl, audio_ch->cmds_start, cx_read(audio_ch->cmds_start + 12)>>1,
	//      chip->num_periods, buf->bpl * chip->num_periods);

	/* Enables corresponding bits at AUD_INT_STAT */
	FUNC6(AUD_A_INT_MSK,
		 FLD_AUD_DST_RISCI1 | FLD_AUD_DST_OF | FLD_AUD_DST_SYNC |
		 FLD_AUD_DST_OPC_ERR);

	/* Clean any pending interrupt bits already set */
	FUNC6(AUD_A_INT_STAT, ~0);

	/* enable audio irqs */
	FUNC5(PCI_INT_MSK, chip->dev->pci_irqmask | PCI_MSK_AUD_INT);

	// Turn on audio downstream fifo and risc enable 0x101
	tmp = FUNC4(AUD_INT_DMA_CTL);
	FUNC5(AUD_INT_DMA_CTL,
	       tmp | (FLD_AUD_DST_A_RISC_EN | FLD_AUD_DST_A_FIFO_EN));

	FUNC7(100);
	return 0;
}