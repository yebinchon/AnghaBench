
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sram_channel {int dma_ctl; int int_msk; } ;
struct cx25821_dev {int * _filename; int * _irq_queues; int _file_status; scalar_t__ _frame_count; scalar_t__ _is_first_frame; scalar_t__ _is_running; int _data_buf_size; scalar_t__ _data_buf_virt_addr; struct sram_channel* sram_channels; } ;


 int END_OF_FILE ;
 int FLD_VID_FIFO_EN ;
 int FLD_VID_RISC_EN ;
 int VID_CH_MODE_SEL ;
 size_t VID_UPSTREAM_SRAM_CHANNEL_I ;
 int _intr_msk ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int kfree (int *) ;
 int memset (scalar_t__,int ,int ) ;
 int printk (char*) ;

void cx25821_stop_upstream_video_ch1(struct cx25821_dev *dev)
{
 struct sram_channel *sram_ch =
     &dev->sram_channels[VID_UPSTREAM_SRAM_CHANNEL_I];
 u32 tmp = 0;

 if (!dev->_is_running) {
  printk
      ("cx25821: No video file is currently running so return!\n");
  return;
 }

 tmp = cx_read(sram_ch->int_msk);
 cx_write(sram_ch->int_msk, tmp & ~_intr_msk);


 tmp = cx_read(sram_ch->dma_ctl);
 cx_write(sram_ch->dma_ctl, tmp & ~(FLD_VID_FIFO_EN | FLD_VID_RISC_EN));


 if (dev->_data_buf_virt_addr)
  memset(dev->_data_buf_virt_addr, 0, dev->_data_buf_size);

 dev->_is_running = 0;
 dev->_is_first_frame = 0;
 dev->_frame_count = 0;
 dev->_file_status = END_OF_FILE;

 if (dev->_irq_queues) {
  kfree(dev->_irq_queues);
  dev->_irq_queues = ((void*)0);
 }

 if (dev->_filename != ((void*)0))
  kfree(dev->_filename);

 tmp = cx_read(VID_CH_MODE_SEL);
 cx_write(VID_CH_MODE_SEL, tmp & 0xFFFFFE00);
}
