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
struct sram_channel {int /*<<< orphan*/  dma_ctl; int /*<<< orphan*/  int_msk; } ;
struct cx25821_dev {int /*<<< orphan*/ * _filename; int /*<<< orphan*/ * _irq_queues; int /*<<< orphan*/  _file_status; scalar_t__ _frame_count; scalar_t__ _is_first_frame; scalar_t__ _is_running; int /*<<< orphan*/  _data_buf_size; scalar_t__ _data_buf_virt_addr; struct sram_channel* sram_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  END_OF_FILE ; 
 int FLD_VID_FIFO_EN ; 
 int FLD_VID_RISC_EN ; 
 int /*<<< orphan*/  VID_CH_MODE_SEL ; 
 size_t VID_UPSTREAM_SRAM_CHANNEL_I ; 
 int _intr_msk ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(struct cx25821_dev *dev)
{
	struct sram_channel *sram_ch =
	    &dev->sram_channels[VID_UPSTREAM_SRAM_CHANNEL_I];
	u32 tmp = 0;

	if (!dev->_is_running) {
		FUNC4
		    ("cx25821: No video file is currently running so return!\n");
		return;
	}
	//Disable RISC interrupts
	tmp = FUNC0(sram_ch->int_msk);
	FUNC1(sram_ch->int_msk, tmp & ~_intr_msk);

	//Turn OFF risc and fifo enable
	tmp = FUNC0(sram_ch->dma_ctl);
	FUNC1(sram_ch->dma_ctl, tmp & ~(FLD_VID_FIFO_EN | FLD_VID_RISC_EN));

	//Clear data buffer memory
	if (dev->_data_buf_virt_addr)
		FUNC3(dev->_data_buf_virt_addr, 0, dev->_data_buf_size);

	dev->_is_running = 0;
	dev->_is_first_frame = 0;
	dev->_frame_count = 0;
	dev->_file_status = END_OF_FILE;

	if (dev->_irq_queues) {
		FUNC2(dev->_irq_queues);
		dev->_irq_queues = NULL;
	}

	if (dev->_filename != NULL)
		FUNC2(dev->_filename);

	tmp = FUNC0(VID_CH_MODE_SEL);
	FUNC1(VID_CH_MODE_SEL, tmp & 0xFFFFFE00);
}