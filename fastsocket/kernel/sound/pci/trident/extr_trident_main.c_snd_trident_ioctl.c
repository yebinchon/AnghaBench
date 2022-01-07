
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_pcm_lib_ioctl (struct snd_pcm_substream*,unsigned int,void*) ;

__attribute__((used)) static int snd_trident_ioctl(struct snd_pcm_substream *substream,
        unsigned int cmd,
        void *arg)
{



 return snd_pcm_lib_ioctl(substream, cmd, arg);
}
