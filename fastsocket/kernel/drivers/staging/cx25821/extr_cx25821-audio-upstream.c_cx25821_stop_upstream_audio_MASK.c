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
typedef  int u32 ;
struct sram_channel {int fld_aud_fifo_en; int fld_aud_risc_en; int /*<<< orphan*/  dma_ctl; int /*<<< orphan*/  int_msk; } ;
struct cx25821_dev {int /*<<< orphan*/ * _audiofilename; int /*<<< orphan*/ * _irq_audio_queues; int /*<<< orphan*/  _audiofile_status; scalar_t__ _audioframe_count; scalar_t__ _is_first_audio_frame; scalar_t__ _audio_is_running; int /*<<< orphan*/  _audiodata_buf_size; scalar_t__ _audiodata_buf_virt_addr; struct sram_channel* sram_channels; } ;

/* Variables and functions */
 size_t AUDIO_UPSTREAM_SRAM_CHANNEL_B ; 
 int /*<<< orphan*/  END_OF_FILE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(struct cx25821_dev *dev)
{
	struct sram_channel *sram_ch =
	    &dev->sram_channels[AUDIO_UPSTREAM_SRAM_CHANNEL_B];
	u32 tmp = 0;

	if (!dev->_audio_is_running) {
		FUNC4
		    ("cx25821: No audio file is currently running so return!\n");
		return;
	}
	//Disable RISC interrupts
	FUNC1(sram_ch->int_msk, 0);

	//Turn OFF risc and fifo enable in AUD_DMA_CNTRL
	tmp = FUNC0(sram_ch->dma_ctl);
	FUNC1(sram_ch->dma_ctl,
		 tmp & ~(sram_ch->fld_aud_fifo_en | sram_ch->fld_aud_risc_en));

	//Clear data buffer memory
	if (dev->_audiodata_buf_virt_addr)
		FUNC3(dev->_audiodata_buf_virt_addr, 0,
		       dev->_audiodata_buf_size);

	dev->_audio_is_running = 0;
	dev->_is_first_audio_frame = 0;
	dev->_audioframe_count = 0;
	dev->_audiofile_status = END_OF_FILE;

	if (dev->_irq_audio_queues) {
		FUNC2(dev->_irq_audio_queues);
		dev->_irq_audio_queues = NULL;
	}

	if (dev->_audiofilename != NULL)
		FUNC2(dev->_audiofilename);
}