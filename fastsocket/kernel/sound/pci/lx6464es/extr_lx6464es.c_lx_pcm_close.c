
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_printdd (char*) ;

__attribute__((used)) static int lx_pcm_close(struct snd_pcm_substream *substream)
{
 int err = 0;
 snd_printdd("->lx_pcm_close\n");
 return err;
}
