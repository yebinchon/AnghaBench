
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sram_channel {int fld_aud_fifo_en; int dma_ctl; } ;
struct cx25821_dev {size_t _audio_upstream_channel_select; struct sram_channel* sram_channels; } ;
typedef int dma_addr_t ;
typedef int __le32 ;


 scalar_t__ AUDIO_LINE_SIZE ;
 unsigned int LINES_PER_AUDIO_BUFFER ;
 unsigned int RISC_EOL ;
 unsigned int RISC_READ ;
 unsigned int RISC_SOL ;
 int RISC_WRITECR ;
 void* cpu_to_le32 (int) ;

__attribute__((used)) static __le32 *cx25821_risc_field_upstream_audio(struct cx25821_dev *dev,
       __le32 * rp,
       dma_addr_t databuf_phys_addr,
       unsigned int bpl,
       int fifo_enable)
{
 unsigned int line;
 struct sram_channel *sram_ch =
     &dev->sram_channels[dev->_audio_upstream_channel_select];
 int offset = 0;


 for (line = 0; line < LINES_PER_AUDIO_BUFFER; line++) {
  *(rp++) = cpu_to_le32(RISC_READ | RISC_SOL | RISC_EOL | bpl);
  *(rp++) = cpu_to_le32(databuf_phys_addr + offset);
  *(rp++) = cpu_to_le32(0);



  if (fifo_enable && line == 2) {
   *(rp++) = RISC_WRITECR;
   *(rp++) = sram_ch->dma_ctl;
   *(rp++) = sram_ch->fld_aud_fifo_en;
   *(rp++) = 0x00000020;
  }

  offset += AUDIO_LINE_SIZE;
 }

 return rp;
}
