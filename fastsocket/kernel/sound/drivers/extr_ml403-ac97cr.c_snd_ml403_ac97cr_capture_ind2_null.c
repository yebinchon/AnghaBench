
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_indirect2 {scalar_t__ hw_ready; } ;
struct snd_ml403_ac97cr {int reg_lock; } ;


 int CR_RECDATA (int) ;
 int CR_RECEMPTY ;
 int CR_REG (struct snd_ml403_ac97cr*,int ) ;
 int RECFIFO ;
 int STATUS ;
 int in_be32 (int ) ;
 struct snd_ml403_ac97cr* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static size_t
snd_ml403_ac97cr_capture_ind2_null(struct snd_pcm_substream *substream,
       struct snd_pcm_indirect2 *rec)
{
 struct snd_ml403_ac97cr *ml403_ac97cr;
 int copied_words = 0;
 u32 empty = 0;

 ml403_ac97cr = snd_pcm_substream_chip(substream);

 spin_lock(&ml403_ac97cr->reg_lock);
 while ((empty = (in_be32(CR_REG(ml403_ac97cr, STATUS)) &
    CR_RECEMPTY)) != CR_RECEMPTY) {
  volatile u32 trash;

  trash = CR_RECDATA(in_be32(CR_REG(ml403_ac97cr, RECFIFO)));



  trash++;
  copied_words++;
 }
 rec->hw_ready = 0;
 spin_unlock(&ml403_ac97cr->reg_lock);

 return (size_t) (copied_words * 2);
}
