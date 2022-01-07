
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int aint; } ;
struct TYPE_3__ {void* aint; } ;
struct snd_ali_channel_control {TYPE_2__ regs; TYPE_1__ data; } ;
struct snd_ali {struct snd_ali_channel_control chregs; int hw_initialized; } ;
typedef int irqreturn_t ;


 unsigned int ADDRESS_IRQ ;
 int ALI_CHANNELS ;
 int ALI_MISCINT ;
 int ALI_REG (struct snd_ali*,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MIXER_OVERFLOW ;
 int MIXER_UNDERFLOW ;
 int TARGET_REACHED ;
 void* inl (int ) ;
 int outl (int,int ) ;
 int snd_ali_update_ptr (struct snd_ali*,int) ;

__attribute__((used)) static irqreturn_t snd_ali_card_interrupt(int irq, void *dev_id)
{
 struct snd_ali *codec = dev_id;
 int channel;
 unsigned int audio_int;
 struct snd_ali_channel_control *pchregs;

 if (codec == ((void*)0) || !codec->hw_initialized)
  return IRQ_NONE;

 audio_int = inl(ALI_REG(codec, ALI_MISCINT));
 if (!audio_int)
  return IRQ_NONE;

 pchregs = &(codec->chregs);
 if (audio_int & ADDRESS_IRQ) {

  pchregs->data.aint = inl(ALI_REG(codec, pchregs->regs.aint));
  for (channel = 0; channel < ALI_CHANNELS; channel++)
   snd_ali_update_ptr(codec, channel);
 }
 outl((TARGET_REACHED | MIXER_OVERFLOW | MIXER_UNDERFLOW),
  ALI_REG(codec, ALI_MISCINT));

 return IRQ_HANDLED;
}
