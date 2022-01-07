
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct fm801 {int cap_ctrl; int reg_lock; } ;


 int CAP_CTRL ;
 int EINVAL ;
 int FM801_BUF1_LAST ;
 int FM801_BUF2_LAST ;
 int FM801_IMMED_STOP ;
 int FM801_PAUSE ;
 int FM801_REG (struct fm801*,int ) ;
 int FM801_START ;






 int outw (int,int ) ;
 int snd_BUG () ;
 struct fm801* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_fm801_capture_trigger(struct snd_pcm_substream *substream,
         int cmd)
{
 struct fm801 *chip = snd_pcm_substream_chip(substream);

 spin_lock(&chip->reg_lock);
 switch (cmd) {
 case 130:
  chip->cap_ctrl &= ~(FM801_BUF1_LAST |
         FM801_BUF2_LAST |
         FM801_PAUSE);
  chip->cap_ctrl |= FM801_START |
       FM801_IMMED_STOP;
  break;
 case 129:
  chip->cap_ctrl &= ~(FM801_START | FM801_PAUSE);
  break;
 case 133:
 case 128:
  chip->cap_ctrl |= FM801_PAUSE;
  break;
 case 132:
 case 131:
  chip->cap_ctrl &= ~FM801_PAUSE;
  break;
 default:
  spin_unlock(&chip->reg_lock);
  snd_BUG();
  return -EINVAL;
 }
 outw(chip->cap_ctrl, FM801_REG(chip, CAP_CTRL));
 spin_unlock(&chip->reg_lock);
 return 0;
}
