
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct mx1_mx2_runtime_data* private_data; } ;
struct mx1_mx2_runtime_data {int dummy; } ;


 int kfree (struct mx1_mx2_runtime_data*) ;

__attribute__((used)) static int mx1_mx2_pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct mx1_mx2_runtime_data *prtd = runtime->private_data;

 kfree(prtd);

 return 0;
}
