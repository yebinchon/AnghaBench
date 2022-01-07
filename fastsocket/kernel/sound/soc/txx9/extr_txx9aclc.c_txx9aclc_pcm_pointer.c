
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct txx9aclc_dmadata {int pos; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {struct txx9aclc_dmadata* private_data; } ;


 int bytes_to_frames (TYPE_1__*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t
txx9aclc_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct txx9aclc_dmadata *dmadata = substream->runtime->private_data;

 return bytes_to_frames(substream->runtime, dmadata->pos);
}
