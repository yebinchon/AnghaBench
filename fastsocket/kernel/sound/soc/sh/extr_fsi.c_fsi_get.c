
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct fsi_priv {int dummy; } ;
struct TYPE_6__ {struct fsi_priv fsib; struct fsi_priv fsia; } ;
struct TYPE_5__ {TYPE_1__* cpu_dai; } ;
struct TYPE_4__ {int id; } ;


 TYPE_3__* master ;

__attribute__((used)) static struct fsi_priv *fsi_get(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd;
 struct fsi_priv *fsi = ((void*)0);

 if (!substream || !master)
  return ((void*)0);

 rtd = substream->private_data;
 switch (rtd->dai->cpu_dai->id) {
 case 0:
  fsi = &master->fsia;
  break;
 case 1:
  fsi = &master->fsib;
  break;
 }

 return fsi;
}
