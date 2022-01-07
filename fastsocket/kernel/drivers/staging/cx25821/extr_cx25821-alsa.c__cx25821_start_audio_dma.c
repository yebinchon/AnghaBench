
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sram_channel {int dummy; } ;
struct cx25821_dev {int pci_irqmask; } ;
struct TYPE_4__ {int dma; } ;
struct cx25821_buffer {int bpl; TYPE_1__ risc; } ;
struct TYPE_5__ {struct cx25821_dev* dev; int count; struct cx25821_buffer* buf; } ;
typedef TYPE_2__ snd_cx25821_card_t ;


 size_t AUDIO_SRAM_CHANNEL ;
 int AUD_A_CFG ;
 int AUD_A_GPCNT_CTL ;
 int AUD_A_INT_MSK ;
 int AUD_A_INT_STAT ;
 int AUD_A_LNGTH ;
 int AUD_INT_DMA_CTL ;
 int FLD_AUD_CLK_ENABLE ;
 int FLD_AUD_DST_A_FIFO_EN ;
 int FLD_AUD_DST_A_RISC_EN ;
 int FLD_AUD_DST_ENABLE ;
 int FLD_AUD_DST_OF ;
 int FLD_AUD_DST_OPC_ERR ;
 int FLD_AUD_DST_PK_MODE ;
 int FLD_AUD_DST_RISCI1 ;
 int FLD_AUD_DST_SYNC ;
 int GP_COUNT_CONTROL_RESET ;
 int PCI_INT_MSK ;
 int PCI_MSK_AUD_INT ;
 int atomic_set (int *,int ) ;
 int cx25821_set_gpiopin_direction (struct cx25821_dev*,int ,int ) ;
 int cx25821_sram_channel_setup_audio (struct cx25821_dev*,struct sram_channel*,int,int ) ;
 struct sram_channel* cx25821_sram_channels ;
 int cx_clear (int ,int) ;
 int cx_read (int ) ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static int _cx25821_start_audio_dma(snd_cx25821_card_t * chip)
{
 struct cx25821_buffer *buf = chip->buf;
 struct cx25821_dev *dev = chip->dev;
 struct sram_channel *audio_ch =
     &cx25821_sram_channels[AUDIO_SRAM_CHANNEL];
 u32 tmp = 0;


 cx25821_set_gpiopin_direction(chip->dev, 0, 0);


 cx_clear(AUD_INT_DMA_CTL,
   FLD_AUD_DST_A_RISC_EN | FLD_AUD_DST_A_FIFO_EN);


 cx25821_sram_channel_setup_audio(chip->dev, audio_ch, buf->bpl,
      buf->risc.dma);


 cx_write(AUD_A_LNGTH, buf->bpl);


 cx_write(AUD_A_GPCNT_CTL, GP_COUNT_CONTROL_RESET);
 atomic_set(&chip->count, 0);


 tmp = cx_read(AUD_A_CFG);
 cx_write(AUD_A_CFG,
   tmp | FLD_AUD_DST_PK_MODE | FLD_AUD_DST_ENABLE |
   FLD_AUD_CLK_ENABLE);






 cx_write(AUD_A_INT_MSK,
   FLD_AUD_DST_RISCI1 | FLD_AUD_DST_OF | FLD_AUD_DST_SYNC |
   FLD_AUD_DST_OPC_ERR);


 cx_write(AUD_A_INT_STAT, ~0);


 cx_set(PCI_INT_MSK, chip->dev->pci_irqmask | PCI_MSK_AUD_INT);


 tmp = cx_read(AUD_INT_DMA_CTL);
 cx_set(AUD_INT_DMA_CTL,
        tmp | (FLD_AUD_DST_A_RISC_EN | FLD_AUD_DST_A_FIFO_EN));

 mdelay(100);
 return 0;
}
