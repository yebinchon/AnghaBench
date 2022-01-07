
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; struct aaci* private_data; } ;
struct aaci_runtime {int dummy; } ;
struct aaci {int lock; } ;
struct TYPE_2__ {struct aaci_runtime* private_data; } ;


 int EINVAL ;






 int aaci_pcm_playback_start (struct aaci_runtime*) ;
 int aaci_pcm_playback_stop (struct aaci_runtime*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int aaci_pcm_playback_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct aaci *aaci = substream->private_data;
 struct aaci_runtime *aacirun = substream->runtime->private_data;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&aaci->lock, flags);
 switch (cmd) {
 case 130:
  aaci_pcm_playback_start(aacirun);
  break;

 case 131:
  aaci_pcm_playback_start(aacirun);
  break;

 case 129:
  aaci_pcm_playback_stop(aacirun);
  break;

 case 128:
  aaci_pcm_playback_stop(aacirun);
  break;

 case 133:
  break;

 case 132:
  break;

 default:
  ret = -EINVAL;
 }
 spin_unlock_irqrestore(&aaci->lock, flags);

 return ret;
}
