
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int channels; int format; } ;


 int ALS4000_FORMAT_16BIT ;
 int ALS4000_FORMAT_SIGNED ;
 int ALS4000_FORMAT_STEREO ;
 int snd_pcm_format_physical_width (int ) ;
 scalar_t__ snd_pcm_format_signed (int ) ;

__attribute__((used)) static int snd_als4000_get_format(struct snd_pcm_runtime *runtime)
{
 int result;

 result = 0;
 if (snd_pcm_format_signed(runtime->format))
  result |= ALS4000_FORMAT_SIGNED;
 if (snd_pcm_format_physical_width(runtime->format) == 16)
  result |= ALS4000_FORMAT_16BIT;
 if (runtime->channels > 1)
  result |= ALS4000_FORMAT_STEREO;
 return result;
}
