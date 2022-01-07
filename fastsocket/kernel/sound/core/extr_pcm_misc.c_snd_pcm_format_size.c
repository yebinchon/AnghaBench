
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int snd_pcm_format_t ;


 size_t EINVAL ;
 int snd_pcm_format_physical_width (int ) ;

ssize_t snd_pcm_format_size(snd_pcm_format_t format, size_t samples)
{
 int phys_width = snd_pcm_format_physical_width(format);
 if (phys_width < 0)
  return -EINVAL;
 return samples * phys_width / 8;
}
