
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct sram_channel {int dma_ctl; } ;
struct cx25821_dev {size_t _channel2_upstream_select; int _isNTSC_ch2; struct sram_channel* sram_channels; } ;
typedef unsigned int dma_addr_t ;
typedef int __le32 ;


 int FLD_VID_FIFO_EN ;
 unsigned int NO_SYNC_LINE ;
 unsigned int NTSC_FIELD_HEIGHT ;
 unsigned int NUM_NO_OPS ;
 unsigned int RISC_EOL ;
 unsigned int RISC_NOOP ;
 unsigned int RISC_READ ;
 unsigned int RISC_RESYNC ;
 unsigned int RISC_SOL ;
 int RISC_WRITECR ;
 scalar_t__ USE_RISC_NOOP_VIDEO ;
 void* cpu_to_le32 (unsigned int) ;

__attribute__((used)) static __le32 *cx25821_risc_field_upstream_ch2(struct cx25821_dev *dev,
            __le32 * rp,
            dma_addr_t databuf_phys_addr,
            unsigned int offset,
            u32 sync_line, unsigned int bpl,
            unsigned int lines,
            int fifo_enable, int field_type)
{
 unsigned int line, i;
 struct sram_channel *sram_ch =
     &dev->sram_channels[dev->_channel2_upstream_select];
 int dist_betwn_starts = bpl * 2;


 if (sync_line != NO_SYNC_LINE) {
  *(rp++) = cpu_to_le32(RISC_RESYNC | sync_line);
 }

 if (USE_RISC_NOOP_VIDEO) {
  for (i = 0; i < NUM_NO_OPS; i++) {
   *(rp++) = cpu_to_le32(RISC_NOOP);
  }
 }


 for (line = 0; line < lines; line++) {
  *(rp++) = cpu_to_le32(RISC_READ | RISC_SOL | RISC_EOL | bpl);
  *(rp++) = cpu_to_le32(databuf_phys_addr + offset);
  *(rp++) = cpu_to_le32(0);

  if ((lines <= NTSC_FIELD_HEIGHT)
      || (line < (NTSC_FIELD_HEIGHT - 1))
      || !(dev->_isNTSC_ch2)) {
   offset += dist_betwn_starts;
  }



  if (fifo_enable && line == 3) {
   *(rp++) = RISC_WRITECR;
   *(rp++) = sram_ch->dma_ctl;
   *(rp++) = FLD_VID_FIFO_EN;
   *(rp++) = 0x00000001;
  }
 }

 return rp;
}
