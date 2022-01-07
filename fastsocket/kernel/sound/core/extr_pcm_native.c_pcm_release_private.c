
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_pcm_unlink (struct snd_pcm_substream*) ;

__attribute__((used)) static void pcm_release_private(struct snd_pcm_substream *substream)
{
 snd_pcm_unlink(substream);
}
