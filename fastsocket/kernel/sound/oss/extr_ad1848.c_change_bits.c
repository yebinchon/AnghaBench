
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__** mix_devices; } ;
typedef TYPE_2__ ad1848_info ;
struct TYPE_4__ {int mutepol; int polarity; int nbits; int bitpos; int mutepos; } ;



__attribute__((used)) static void change_bits(ad1848_info * devc, unsigned char *regval,
   unsigned char *muteval, int dev, int chn, int newval)
{
 unsigned char mask;
 int shift;
 int mute;
 int mutemask;
 int set_mute_bit;

 set_mute_bit = (newval == 0) ^ devc->mix_devices[dev][chn].mutepol;

 if (devc->mix_devices[dev][chn].polarity == 1)
  newval = 100 - newval;

 mask = (1 << devc->mix_devices[dev][chn].nbits) - 1;
 shift = devc->mix_devices[dev][chn].bitpos;

 if (devc->mix_devices[dev][chn].mutepos == 8)
 {
  mute = 0;
  mutemask = ~0;
 }
 else
 {
  mute = (set_mute_bit << devc->mix_devices[dev][chn].mutepos);
  mutemask = ~(1 << devc->mix_devices[dev][chn].mutepos);
 }

 newval = (int) ((newval * mask) + 50) / 100;
 *regval &= ~(mask << shift);
 *regval |= (newval & mask) << shift;

 *muteval &= mutemask;
 *muteval |= mute;
}
