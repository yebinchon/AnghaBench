
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int format2bits ;
struct TYPE_4__ {unsigned int audio_format; unsigned char format_bits; } ;
typedef TYPE_1__ ad1848_port_info ;
struct TYPE_5__ {size_t model; } ;
typedef TYPE_2__ ad1848_info ;
struct TYPE_6__ {scalar_t__ portc; scalar_t__ devc; } ;
 unsigned int* ad_format_mask ;
 TYPE_3__** audio_devs ;

__attribute__((used)) static unsigned int ad1848_set_bits(int dev, unsigned int arg)
{
 ad1848_info *devc = (ad1848_info *) audio_devs[dev]->devc;
 ad1848_port_info *portc = (ad1848_port_info *) audio_devs[dev]->portc;

 static struct format_tbl
 {
    int format;
    unsigned char bits;
 }
 format2bits[] =
 {
  {
   0, 0
  }
  ,
  {
   134, 1
  }
  ,
  {
   136, 3
  }
  ,
  {
   135, 5
  }
  ,
  {
   128, 0
  }
  ,
  {
   132, 2
  }
  ,
  {
   133, 6
  }
  ,
  {
   131, 0
  }
  ,
  {
   129, 0
  }
  ,
  {
   130, 0
  }
 };
 int i, n = sizeof(format2bits) / sizeof(struct format_tbl);

 if (arg == 0)
  return portc->audio_format;

 if (!(arg & ad_format_mask[devc->model]))
  arg = 128;

 portc->audio_format = arg;

 for (i = 0; i < n; i++)
  if (format2bits[i].format == arg)
  {
   if ((portc->format_bits = format2bits[i].bits) == 0)
    return portc->audio_format = 128;

   return arg;
  }

 portc->format_bits = 0;
 return portc->audio_format = 128;
}
