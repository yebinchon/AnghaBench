
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sram_channel {int int_msk; int int_stat; int gpcnt; } ;
struct cx25821_dev {int _frame_index_ch2; scalar_t__ _pixel_format_ch2; scalar_t__ _file_status_ch2; int _frame_count_ch2; int slock; int * _dma_virt_start_addr_ch2; scalar_t__ _dma_phys_start_addr_ch2; scalar_t__ _isNTSC_ch2; scalar_t__ _is_first_frame_ch2; int _irq_work_entry_ch2; int _irq_queues_ch2; struct sram_channel* sram_channels; } ;
typedef scalar_t__ dma_addr_t ;
typedef int __le32 ;


 scalar_t__ END_OF_FILE ;
 int FIFO_DISABLE ;
 int FLD_VID_SRC_RISC1 ;
 int NTSC_FIELD_HEIGHT ;
 int ODD_FIELD ;
 int ODD_FLD_NTSC_PROG_SIZE ;
 int ODD_FLD_PAL_PROG_SIZE ;
 int PAL_FIELD_HEIGHT ;
 scalar_t__ PIXEL_FRMT_411 ;
 scalar_t__ RISC_JUMP ;
 int TOP_OFFSET ;
 int Y411_LINE_SZ ;
 int Y422_LINE_SZ ;
 int _intr_msk ;
 void* cpu_to_le32 (scalar_t__) ;
 int * cx25821_update_riscprogram_ch2 (struct cx25821_dev*,int *,int ,int,int,int,int ,int ) ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int printk (char*,int ) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int cx25821_video_upstream_irq_ch2(struct cx25821_dev *dev, int chan_num,
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

  u32 prog_cnt = cx_read(channel->gpcnt);


  int_msk_tmp = cx_read(channel->int_msk);
  cx_write(channel->int_msk, int_msk_tmp & ~_intr_msk);
  cx_write(channel->int_stat, _intr_msk);

  spin_lock(&dev->slock);

  dev->_frame_index_ch2 = prog_cnt;

  queue_work(dev->_irq_queues_ch2, &dev->_irq_work_entry_ch2);

  if (dev->_is_first_frame_ch2) {
   dev->_is_first_frame_ch2 = 0;

   if (dev->_isNTSC_ch2) {
    singlefield_lines += 1;
    odd_risc_prog_size = ODD_FLD_NTSC_PROG_SIZE;
   } else {
    singlefield_lines = PAL_FIELD_HEIGHT;
    odd_risc_prog_size = ODD_FLD_PAL_PROG_SIZE;
   }

   if (dev->_dma_virt_start_addr_ch2 != ((void*)0)) {
    line_size_in_bytes =
        (dev->_pixel_format_ch2 ==
         PIXEL_FRMT_411) ? Y411_LINE_SZ :
        Y422_LINE_SZ;
    risc_phys_jump_addr =
        dev->_dma_phys_start_addr_ch2 +
        odd_risc_prog_size;

    rp = cx25821_update_riscprogram_ch2(dev,
            dev->
            _dma_virt_start_addr_ch2,
            TOP_OFFSET,
            line_size_in_bytes,
            0x0,
            singlefield_lines,
            FIFO_DISABLE,
            ODD_FIELD);


    *(rp++) = cpu_to_le32(RISC_JUMP);
    *(rp++) = cpu_to_le32(risc_phys_jump_addr);
    *(rp++) = cpu_to_le32(0);
   }
  }

  spin_unlock(&dev->slock);
 }

 if (dev->_file_status_ch2 == END_OF_FILE) {
  printk("cx25821: EOF Channel 2 Framecount = %d\n",
         dev->_frame_count_ch2);
  return -1;
 }

 int_msk_tmp = cx_read(channel->int_msk);
 cx_write(channel->int_msk, int_msk_tmp |= _intr_msk);

 return 0;
}
