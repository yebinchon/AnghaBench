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
struct pci_dev {int dummy; } ;
struct cx25821_dev {int _dma_phys_start_addr_ch2; scalar_t__ _data_buf_phys_addr_ch2; int /*<<< orphan*/ * _dma_virt_addr_ch2; scalar_t__ _isNTSC_ch2; } ;
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  EVEN_FIELD ; 
 int FIFO_DISABLE ; 
 int FIFO_ENABLE ; 
 int FRAME1_VID_PROG_SIZE ; 
 int FRAME_SIZE_NTSC_Y411 ; 
 int FRAME_SIZE_NTSC_Y422 ; 
 int FRAME_SIZE_PAL_Y411 ; 
 int FRAME_SIZE_PAL_Y422 ; 
 int NUM_FRAMES ; 
 int /*<<< orphan*/  ODD_FIELD ; 
 int PAL_VID_PROG_SIZE ; 
 int RISC_CNT_INC ; 
 int RISC_CNT_RESET ; 
 int RISC_IRQ1 ; 
 int RISC_JUMP ; 
 unsigned int UNSET ; 
 unsigned int Y411_LINE_SZ ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct cx25821_dev*,int /*<<< orphan*/ *,scalar_t__,unsigned int,int,unsigned int,int,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct cx25821_dev *dev,
				     struct pci_dev *pci,
				     unsigned int top_offset, unsigned int bpl,
				     unsigned int lines)
{
	__le32 *rp;
	int fifo_enable = 0;
	int singlefield_lines = lines >> 1;	//get line count for single field
	int odd_num_lines = singlefield_lines;
	int frame = 0;
	int frame_size = 0;
	int databuf_offset = 0;
	int risc_program_size = 0;
	int risc_flag = RISC_CNT_RESET;
	unsigned int bottom_offset = bpl;
	dma_addr_t risc_phys_jump_addr;

	if (dev->_isNTSC_ch2) {
		odd_num_lines = singlefield_lines + 1;
		risc_program_size = FRAME1_VID_PROG_SIZE;
		frame_size =
		    (bpl ==
		     Y411_LINE_SZ) ? FRAME_SIZE_NTSC_Y411 :
		    FRAME_SIZE_NTSC_Y422;
	} else {
		risc_program_size = PAL_VID_PROG_SIZE;
		frame_size =
		    (bpl ==
		     Y411_LINE_SZ) ? FRAME_SIZE_PAL_Y411 : FRAME_SIZE_PAL_Y422;
	}

	/* Virtual address of Risc buffer program */
	rp = dev->_dma_virt_addr_ch2;

	for (frame = 0; frame < NUM_FRAMES; frame++) {
		databuf_offset = frame_size * frame;

		if (UNSET != top_offset) {
			fifo_enable = (frame == 0) ? FIFO_ENABLE : FIFO_DISABLE;
			rp = FUNC1(dev, rp,
							     dev->
							     _data_buf_phys_addr_ch2
							     + databuf_offset,
							     top_offset, 0, bpl,
							     odd_num_lines,
							     fifo_enable,
							     ODD_FIELD);
		}

		fifo_enable = FIFO_DISABLE;

		//Even field
		rp = FUNC1(dev, rp,
						     dev->
						     _data_buf_phys_addr_ch2 +
						     databuf_offset,
						     bottom_offset, 0x200, bpl,
						     singlefield_lines,
						     fifo_enable, EVEN_FIELD);

		if (frame == 0) {
			risc_flag = RISC_CNT_RESET;
			risc_phys_jump_addr =
			    dev->_dma_phys_start_addr_ch2 + risc_program_size;
		} else {
			risc_flag = RISC_CNT_INC;
			risc_phys_jump_addr = dev->_dma_phys_start_addr_ch2;
		}

		// Loop to 2ndFrameRISC or to Start of Risc program & generate IRQ
		*(rp++) = FUNC0(RISC_JUMP | RISC_IRQ1 | risc_flag);
		*(rp++) = FUNC0(risc_phys_jump_addr);
		*(rp++) = FUNC0(0);
	}

	return 0;
}