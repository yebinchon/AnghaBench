
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream2 {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;



__attribute__((used)) static inline struct snd_pcm_substream2 *oss_substream(struct snd_pcm_substream *substream)
{
 return (struct snd_pcm_substream2 *)substream;
}
