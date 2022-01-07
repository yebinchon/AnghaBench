
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int local_conversion; int format_mask; int local_format; TYPE_1__* d; int audio_format; } ;
struct TYPE_3__ {int (* set_bits ) (int,int) ;} ;


 int AFMT_MU_LAW ;
 int AFMT_QUERY ;
 int AFMT_U8 ;
 int CNV_MU_LAW ;
 TYPE_2__** audio_devs ;
 int stub1 (int,int) ;

__attribute__((used)) static int set_format(int dev, int fmt)
{
 if (fmt != AFMT_QUERY)
 {
  audio_devs[dev]->local_conversion = 0;

  if (!(audio_devs[dev]->format_mask & fmt))
  {
   if (fmt == AFMT_MU_LAW)
   {
    fmt = AFMT_U8;
    audio_devs[dev]->local_conversion = CNV_MU_LAW;
   }
   else
    fmt = AFMT_U8;
  }
  audio_devs[dev]->audio_format = audio_devs[dev]->d->set_bits(dev, fmt);
  audio_devs[dev]->local_format = fmt;
 }
 else
  return audio_devs[dev]->local_format;

 if (audio_devs[dev]->local_conversion)
  return audio_devs[dev]->local_conversion;
 else
  return audio_devs[dev]->local_format;
}
