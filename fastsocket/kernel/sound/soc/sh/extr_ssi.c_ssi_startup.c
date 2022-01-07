
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssi_priv {int inuse; } ;
struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {size_t id; } ;


 int EBUSY ;
 int pr_debug (char*) ;
 struct ssi_priv* ssi_cpu_data ;

__attribute__((used)) static int ssi_startup(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct ssi_priv *ssi = &ssi_cpu_data[rtd->dai->cpu_dai->id];
 if (ssi->inuse) {
  pr_debug("ssi: already in use!\n");
  return -EBUSY;
 } else
  ssi->inuse = 1;
 return 0;
}
