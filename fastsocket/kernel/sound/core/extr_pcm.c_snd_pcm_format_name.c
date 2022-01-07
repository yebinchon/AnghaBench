
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t snd_pcm_format_t ;


 char const** snd_pcm_format_names ;

const char *snd_pcm_format_name(snd_pcm_format_t format)
{
 return snd_pcm_format_names[format];
}
