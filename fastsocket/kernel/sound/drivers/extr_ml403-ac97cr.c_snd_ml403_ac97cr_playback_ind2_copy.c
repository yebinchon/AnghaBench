
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_indirect2 {int hw_ready; scalar_t__ sw_data; } ;
struct snd_ml403_ac97cr {int reg_lock; } ;
struct TYPE_2__ {scalar_t__ dma_area; } ;


 int CR_PLAYDATA (int ) ;
 int CR_PLAYFULL ;
 int CR_REG (struct snd_ml403_ac97cr*,int ) ;
 int PLAYFIFO ;
 int STATUS ;
 int in_be32 (int ) ;
 int out_be32 (int ,int ) ;
 struct snd_ml403_ac97cr* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static size_t
snd_ml403_ac97cr_playback_ind2_copy(struct snd_pcm_substream *substream,
        struct snd_pcm_indirect2 *rec,
        size_t bytes)
{
 struct snd_ml403_ac97cr *ml403_ac97cr;
 u16 *src;
 int copied_words = 0;
 u32 full = 0;

 ml403_ac97cr = snd_pcm_substream_chip(substream);
 src = (u16 *)(substream->runtime->dma_area + rec->sw_data);

 spin_lock(&ml403_ac97cr->reg_lock);
 while (((full = (in_be32(CR_REG(ml403_ac97cr, STATUS)) &
    CR_PLAYFULL)) != CR_PLAYFULL) && (bytes > 1)) {
  out_be32(CR_REG(ml403_ac97cr, PLAYFIFO),
    CR_PLAYDATA(src[copied_words]));
  copied_words++;
  bytes = bytes - 2;
 }
 if (full != CR_PLAYFULL)
  rec->hw_ready = 1;
 else
  rec->hw_ready = 0;
 spin_unlock(&ml403_ac97cr->reg_lock);

 return (size_t) (copied_words * 2);
}
