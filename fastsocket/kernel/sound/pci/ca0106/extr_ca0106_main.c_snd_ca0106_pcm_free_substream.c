
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int private_data; } ;


 int kfree (int ) ;

__attribute__((used)) static void snd_ca0106_pcm_free_substream(struct snd_pcm_runtime *runtime)
{
 kfree(runtime->private_data);
}
