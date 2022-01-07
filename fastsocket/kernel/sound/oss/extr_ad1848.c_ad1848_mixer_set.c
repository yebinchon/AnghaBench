
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int supported_devices; int* mixer_reroute; int* levels; TYPE_1__** mix_devices; } ;
typedef TYPE_2__ ad1848_info ;
struct TYPE_5__ {scalar_t__ nbits; } ;


 int EINVAL ;
 size_t LEFT_CHN ;
 size_t RIGHT_CHN ;
 int ad1848_mixer_set_channel (TYPE_2__*,int,int,size_t) ;
 int* mix_cvt ;

__attribute__((used)) static int ad1848_mixer_set(ad1848_info * devc, int dev, int value)
{
 int left = value & 0x000000ff;
 int right = (value & 0x0000ff00) >> 8;
 int retvol;

 if (dev > 31)
  return -EINVAL;

 if (!(devc->supported_devices & (1 << dev)))
  return -EINVAL;

 dev = devc->mixer_reroute[dev];

 if (devc->mix_devices[dev][LEFT_CHN].nbits == 0)
  return -EINVAL;

 if (left > 100)
  left = 100;
 if (right > 100)
  right = 100;

 if (devc->mix_devices[dev][RIGHT_CHN].nbits == 0)
  right = left;

 retvol = left | (right << 8);


 left = mix_cvt[left];
 right = mix_cvt[right];

 devc->levels[dev] = retvol;




 ad1848_mixer_set_channel(devc, dev, left, LEFT_CHN);




 if (devc->mix_devices[dev][RIGHT_CHN].nbits == 0)
  goto out;
 ad1848_mixer_set_channel(devc, dev, right, RIGHT_CHN);

 out:
 return retvol;
}
