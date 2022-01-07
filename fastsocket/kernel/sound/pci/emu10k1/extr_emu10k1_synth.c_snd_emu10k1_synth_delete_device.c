
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_device {struct snd_emux* driver_data; } ;
struct snd_emux {struct snd_emu10k1* hw; } ;
struct snd_emu10k1 {int voice_lock; int * get_synth_voice; int * synth; } ;


 int snd_emux_free (struct snd_emux*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_emu10k1_synth_delete_device(struct snd_seq_device *dev)
{
 struct snd_emux *emux;
 struct snd_emu10k1 *hw;
 unsigned long flags;

 if (dev->driver_data == ((void*)0))
  return 0;

 emux = dev->driver_data;

 hw = emux->hw;
 spin_lock_irqsave(&hw->voice_lock, flags);
 hw->synth = ((void*)0);
 hw->get_synth_voice = ((void*)0);
 spin_unlock_irqrestore(&hw->voice_lock, flags);

 snd_emux_free(emux);
 return 0;
}
