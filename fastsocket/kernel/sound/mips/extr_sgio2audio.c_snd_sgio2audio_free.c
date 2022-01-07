
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_sgio2audio {int ring_base_dma; int ring_base; int * channel; } ;
struct TYPE_6__ {int control; } ;
struct TYPE_7__ {TYPE_1__ audio; } ;
struct TYPE_9__ {TYPE_2__ perif; } ;
struct TYPE_8__ {size_t idx; int irq; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int AUDIO_CONTROL_RESET ;
 int MACEISA_RINGBUFFERS_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int free_irq (int ,int *) ;
 int kfree (struct snd_sgio2audio*) ;
 TYPE_4__* mace ;
 TYPE_3__* snd_sgio2_isr_table ;
 int udelay (int) ;
 int writeq (int ,int *) ;

__attribute__((used)) static int snd_sgio2audio_free(struct snd_sgio2audio *chip)
{
 int i;


 writeq(AUDIO_CONTROL_RESET, &mace->perif.audio.control);
 udelay(1);
 writeq(0, &mace->perif.audio.control);


 for (i = 0; i < ARRAY_SIZE(snd_sgio2_isr_table); i++)
  free_irq(snd_sgio2_isr_table[i].irq,
    &chip->channel[snd_sgio2_isr_table[i].idx]);

 dma_free_coherent(((void*)0), MACEISA_RINGBUFFERS_SIZE,
     chip->ring_base, chip->ring_base_dma);


 kfree(chip);
 return 0;
}
