
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm2 {int dummy; } ;
struct snd_pcm {int dummy; } ;



__attribute__((used)) static inline struct snd_pcm2 *oss_pcm(struct snd_pcm *pcm)
{
 return (struct snd_pcm2 *)pcm;
}
