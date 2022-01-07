
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t snd_pcm_format_t ;
struct TYPE_2__ {int signd; } ;


 int EINVAL ;
 size_t SNDRV_PCM_FORMAT_LAST ;
 TYPE_1__* pcm_formats ;

int snd_pcm_format_signed(snd_pcm_format_t format)
{
 int val;
 if (format < 0 || format > SNDRV_PCM_FORMAT_LAST)
  return -EINVAL;
 if ((val = pcm_formats[format].signd) < 0)
  return -EINVAL;
 return val;
}
