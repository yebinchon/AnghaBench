
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sram_channel {int fld_aud_fifo_en; int fld_aud_risc_en; int dma_ctl; int int_msk; } ;
struct cx25821_dev {int * _audiofilename; int * _irq_audio_queues; int _audiofile_status; scalar_t__ _audioframe_count; scalar_t__ _is_first_audio_frame; scalar_t__ _audio_is_running; int _audiodata_buf_size; scalar_t__ _audiodata_buf_virt_addr; struct sram_channel* sram_channels; } ;


 size_t AUDIO_UPSTREAM_SRAM_CHANNEL_B ;
 int END_OF_FILE ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int kfree (int *) ;
 int memset (scalar_t__,int ,int ) ;
 int printk (char*) ;

void cx25821_stop_upstream_audio(struct cx25821_dev *dev)
{
 struct sram_channel *sram_ch =
     &dev->sram_channels[AUDIO_UPSTREAM_SRAM_CHANNEL_B];
 u32 tmp = 0;

 if (!dev->_audio_is_running) {
  printk
      ("cx25821: No audio file is currently running so return!\n");
  return;
 }

 cx_write(sram_ch->int_msk, 0);


 tmp = cx_read(sram_ch->dma_ctl);
 cx_write(sram_ch->dma_ctl,
   tmp & ~(sram_ch->fld_aud_fifo_en | sram_ch->fld_aud_risc_en));


 if (dev->_audiodata_buf_virt_addr)
  memset(dev->_audiodata_buf_virt_addr, 0,
         dev->_audiodata_buf_size);

 dev->_audio_is_running = 0;
 dev->_is_first_audio_frame = 0;
 dev->_audioframe_count = 0;
 dev->_audiofile_status = END_OF_FILE;

 if (dev->_irq_audio_queues) {
  kfree(dev->_irq_audio_queues);
  dev->_irq_audio_queues = ((void*)0);
 }

 if (dev->_audiofilename != ((void*)0))
  kfree(dev->_audiofilename);
}
