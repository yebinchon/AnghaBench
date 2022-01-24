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
struct sram_channel {int /*<<< orphan*/  int_msk; int /*<<< orphan*/  int_stat; int /*<<< orphan*/  gpcnt; } ;
struct cx25821_dev {int _frame_index_ch2; scalar_t__ _pixel_format_ch2; scalar_t__ _file_status_ch2; int /*<<< orphan*/  _frame_count_ch2; int /*<<< orphan*/  slock; int /*<<< orphan*/ * _dma_virt_start_addr_ch2; scalar_t__ _dma_phys_start_addr_ch2; scalar_t__ _isNTSC_ch2; scalar_t__ _is_first_frame_ch2; int /*<<< orphan*/  _irq_work_entry_ch2; int /*<<< orphan*/  _irq_queues_ch2; struct sram_channel* sram_channels; } ;
typedef  scalar_t__ dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 scalar_t__ END_OF_FILE ; 
 int /*<<< orphan*/  FIFO_DISABLE ; 
 int FLD_VID_SRC_RISC1 ; 
 int NTSC_FIELD_HEIGHT ; 
 int /*<<< orphan*/  ODD_FIELD ; 
 int ODD_FLD_NTSC_PROG_SIZE ; 
 int ODD_FLD_PAL_PROG_SIZE ; 
 int PAL_FIELD_HEIGHT ; 
 scalar_t__ PIXEL_FRMT_411 ; 
 scalar_t__ RISC_JUMP ; 
 int /*<<< orphan*/  TOP_OFFSET ; 
 int Y411_LINE_SZ ; 
 int Y422_LINE_SZ ; 
 int _intr_msk ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (struct cx25821_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct cx25821_dev *dev, int chan_num,
				   u32 status)
{
	u32 int_msk_tmp;
	struct sram_channel *channel = &dev->sram_channels[chan_num];
	int singlefield_lines = NTSC_FIELD_HEIGHT;
	int line_size_in_bytes = Y422_LINE_SZ;
	int odd_risc_prog_size = 0;
	dma_addr_t risc_phys_jump_addr;
	__le32 *rp;

	if (status & FLD_VID_SRC_RISC1) {
		// We should only process one program per call
		u32 prog_cnt = FUNC2(channel->gpcnt);

		//Since we've identified our IRQ, clear our bits from the interrupt mask and interrupt status registers
		int_msk_tmp = FUNC2(channel->int_msk);
		FUNC3(channel->int_msk, int_msk_tmp & ~_intr_msk);
		FUNC3(channel->int_stat, _intr_msk);

		FUNC6(&dev->slock);

		dev->_frame_index_ch2 = prog_cnt;

		FUNC5(dev->_irq_queues_ch2, &dev->_irq_work_entry_ch2);

		if (dev->_is_first_frame_ch2) {
			dev->_is_first_frame_ch2 = 0;

			if (dev->_isNTSC_ch2) {
				singlefield_lines += 1;
				odd_risc_prog_size = ODD_FLD_NTSC_PROG_SIZE;
			} else {
				singlefield_lines = PAL_FIELD_HEIGHT;
				odd_risc_prog_size = ODD_FLD_PAL_PROG_SIZE;
			}

			if (dev->_dma_virt_start_addr_ch2 != NULL) {
				line_size_in_bytes =
				    (dev->_pixel_format_ch2 ==
				     PIXEL_FRMT_411) ? Y411_LINE_SZ :
				    Y422_LINE_SZ;
				risc_phys_jump_addr =
				    dev->_dma_phys_start_addr_ch2 +
				    odd_risc_prog_size;

				rp = FUNC1(dev,
								    dev->
								    _dma_virt_start_addr_ch2,
								    TOP_OFFSET,
								    line_size_in_bytes,
								    0x0,
								    singlefield_lines,
								    FIFO_DISABLE,
								    ODD_FIELD);

				// Jump to Even Risc program of 1st Frame
				*(rp++) = FUNC0(RISC_JUMP);
				*(rp++) = FUNC0(risc_phys_jump_addr);
				*(rp++) = FUNC0(0);
			}
		}

		FUNC7(&dev->slock);
	}

	if (dev->_file_status_ch2 == END_OF_FILE) {
		FUNC4("cx25821: EOF Channel 2 Framecount = %d\n",
		       dev->_frame_count_ch2);
		return -1;
	}
	//ElSE, set the interrupt mask register, re-enable irq.
	int_msk_tmp = FUNC2(channel->int_msk);
	FUNC3(channel->int_msk, int_msk_tmp |= _intr_msk);

	return 0;
}