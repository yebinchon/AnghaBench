
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct davinci_runtime_data {int lock; int master_lch; } ;
struct TYPE_2__ {struct davinci_runtime_data* private_data; } ;


 int EINVAL ;






 int edma_start (int ) ;
 int edma_stop (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int davinci_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct davinci_runtime_data *prtd = substream->runtime->private_data;
 int ret = 0;

 spin_lock(&prtd->lock);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  edma_start(prtd->master_lch);
  break;
 case 129:
 case 128:
 case 133:
  edma_stop(prtd->master_lch);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 spin_unlock(&prtd->lock);

 return ret;
}
