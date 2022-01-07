
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t snd_pcm_format_t ;
struct TYPE_2__ {int phys; unsigned char* silence; int signd; } ;


 int EINVAL ;
 size_t SNDRV_PCM_FORMAT_LAST ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (void*,unsigned char,unsigned int) ;
 TYPE_1__* pcm_formats ;

int snd_pcm_format_set_silence(snd_pcm_format_t format, void *data, unsigned int samples)
{
 int width;
 unsigned char *dst, *pat;

 if (format < 0 || format > SNDRV_PCM_FORMAT_LAST)
  return -EINVAL;
 if (samples == 0)
  return 0;
 width = pcm_formats[format].phys;
 pat = pcm_formats[format].silence;
 if (! width)
  return -EINVAL;

 if (pcm_formats[format].signd == 1 || width <= 8) {
  unsigned int bytes = samples * width / 8;
  memset(data, *pat, bytes);
  return 0;
 }

 width /= 8;
 dst = data;







 switch (width) {
 case 2:
  while (samples--) {
   memcpy(dst, pat, 2);
   dst += 2;
  }
  break;
 case 3:
  while (samples--) {
   memcpy(dst, pat, 3);
   dst += 3;
  }
  break;
 case 4:
  while (samples--) {
   memcpy(dst, pat, 4);
   dst += 4;
  }
  break;
 case 8:
  while (samples--) {
   memcpy(dst, pat, 8);
   dst += 8;
  }
  break;
 }

 return 0;
}
