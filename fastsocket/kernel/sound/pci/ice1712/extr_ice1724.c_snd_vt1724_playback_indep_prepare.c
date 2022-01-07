
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int number; } ;
struct snd_ice1712 {int reg_lock; } ;


 int BURST ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_vt1724_pcm_prepare (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_vt1724_playback_indep_prepare(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 unsigned char val;

 spin_lock_irq(&ice->reg_lock);
 val = 3 - substream->number;
 if (inb(ICEMT1724(ice, BURST)) < val)
  outb(val, ICEMT1724(ice, BURST));
 spin_unlock_irq(&ice->reg_lock);
 return snd_vt1724_pcm_prepare(substream);
}
