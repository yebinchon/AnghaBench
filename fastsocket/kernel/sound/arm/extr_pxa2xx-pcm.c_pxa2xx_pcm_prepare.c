
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct pxa2xx_pcm_client* private_data; } ;
struct pxa2xx_pcm_client {int (* prepare ) (struct snd_pcm_substream*) ;} ;


 int __pxa2xx_pcm_prepare (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*) ;

__attribute__((used)) static int pxa2xx_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct pxa2xx_pcm_client *client = substream->private_data;

 __pxa2xx_pcm_prepare(substream);

 return client->prepare(substream);
}
