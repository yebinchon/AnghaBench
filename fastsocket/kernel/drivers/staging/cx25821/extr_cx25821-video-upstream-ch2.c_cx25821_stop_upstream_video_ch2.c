
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sram_channel {int dma_ctl; int int_msk; } ;
struct cx25821_dev {int * _filename_ch2; int * _irq_queues_ch2; int _file_status_ch2; scalar_t__ _frame_count_ch2; scalar_t__ _is_first_frame_ch2; scalar_t__ _is_running_ch2; int _data_buf_size_ch2; scalar_t__ _data_buf_virt_addr_ch2; struct sram_channel* sram_channels; } ;


 int END_OF_FILE ;
 int FLD_VID_FIFO_EN ;
 int FLD_VID_RISC_EN ;
 int VID_CH_MODE_SEL ;
 size_t VID_UPSTREAM_SRAM_CHANNEL_J ;
 int _intr_msk ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int kfree (int *) ;
 int memset (scalar_t__,int ,int ) ;
 int printk (char*) ;

void cx25821_stop_upstream_video_ch2(struct cx25821_dev *dev)
{
 struct sram_channel *sram_ch =
     &dev->sram_channels[VID_UPSTREAM_SRAM_CHANNEL_J];
 u32 tmp = 0;

 if (!dev->_is_running_ch2) {
  printk
      ("cx25821: No video file is currently running so return!\n");
  return;
 }

 tmp = cx_read(sram_ch->int_msk);
 cx_write(sram_ch->int_msk, tmp & ~_intr_msk);


 tmp = cx_read(sram_ch->dma_ctl);
 cx_write(sram_ch->dma_ctl, tmp & ~(FLD_VID_FIFO_EN | FLD_VID_RISC_EN));


 if (dev->_data_buf_virt_addr_ch2)
  memset(dev->_data_buf_virt_addr_ch2, 0,
         dev->_data_buf_size_ch2);

 dev->_is_running_ch2 = 0;
 dev->_is_first_frame_ch2 = 0;
 dev->_frame_count_ch2 = 0;
 dev->_file_status_ch2 = END_OF_FILE;

 if (dev->_irq_queues_ch2) {
  kfree(dev->_irq_queues_ch2);
  dev->_irq_queues_ch2 = ((void*)0);
 }

 if (dev->_filename_ch2 != ((void*)0))
  kfree(dev->_filename_ch2);

 tmp = cx_read(VID_CH_MODE_SEL);
 cx_write(VID_CH_MODE_SEL, tmp & 0xFFFFFE00);
}
