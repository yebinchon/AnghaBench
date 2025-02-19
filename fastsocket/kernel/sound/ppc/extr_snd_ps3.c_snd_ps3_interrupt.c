
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_ps3_card_info {int substream; scalar_t__ silent; int running; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PS3_AUDIO_AX_IE_ASOBEIE (int ) ;
 int PS3_AUDIO_AX_IE_ASOBUIE (int ) ;
 int PS3_AUDIO_AX_IS ;
 int PS3_AUDIO_INTR_0 ;
 int SND_PS3_DMA_FILLTYPE_FIRSTFILL ;
 int SND_PS3_DMA_FILLTYPE_RUNNING ;
 int SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL ;
 int SND_PS3_DMA_FILLTYPE_SILENT_RUNNING ;
 int read_reg (int ) ;
 int snd_pcm_period_elapsed (int ) ;
 int snd_ps3_kick_dma (struct snd_ps3_card_info*) ;
 int snd_ps3_program_dma (struct snd_ps3_card_info*,int ) ;
 int update_reg (int ,int ) ;
 int write_reg (int ,int) ;

__attribute__((used)) static irqreturn_t snd_ps3_interrupt(int irq, void *dev_id)
{

 uint32_t port_intr;
 int underflow_occured = 0;
 struct snd_ps3_card_info *card = dev_id;

 if (!card->running) {
  update_reg(PS3_AUDIO_AX_IS, 0);
  update_reg(PS3_AUDIO_INTR_0, 0);
  return IRQ_HANDLED;
 }

 port_intr = read_reg(PS3_AUDIO_AX_IS);




 if (port_intr & PS3_AUDIO_AX_IE_ASOBEIE(0)) {
  write_reg(PS3_AUDIO_AX_IS, PS3_AUDIO_AX_IE_ASOBEIE(0));
  if (port_intr & PS3_AUDIO_AX_IE_ASOBUIE(0)) {
   write_reg(PS3_AUDIO_AX_IS, port_intr);
   underflow_occured = 1;
  }
  if (card->silent) {

   snd_ps3_program_dma(card,
    (underflow_occured) ?
    SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL :
    SND_PS3_DMA_FILLTYPE_SILENT_RUNNING);
   snd_ps3_kick_dma(card);
   card->silent--;
  } else {
   snd_ps3_program_dma(card,
    (underflow_occured) ?
    SND_PS3_DMA_FILLTYPE_FIRSTFILL :
    SND_PS3_DMA_FILLTYPE_RUNNING);
   snd_ps3_kick_dma(card);
   snd_pcm_period_elapsed(card->substream);
  }
 } else if (port_intr & PS3_AUDIO_AX_IE_ASOBUIE(0)) {
  write_reg(PS3_AUDIO_AX_IS, PS3_AUDIO_AX_IE_ASOBUIE(0));
  snd_ps3_program_dma(card,
        SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL);
  snd_ps3_kick_dma(card);
  snd_ps3_program_dma(card,
        SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL);
  snd_ps3_kick_dma(card);
 }

 return IRQ_HANDLED;
}
