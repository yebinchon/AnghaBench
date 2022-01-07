
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int supported_devices; int model; int* levels; } ;
typedef TYPE_1__ sb_devc ;


 int EINVAL ;


 int ess_mixer_set (TYPE_1__*,int,int,int) ;
 int sb_common_mixer_set (TYPE_1__*,int,int,int) ;
 int smw_mixer_set (TYPE_1__*,int,int,int) ;

__attribute__((used)) static int sb_mixer_set(sb_devc * devc, int dev, int value)
{
 int left = value & 0x000000ff;
 int right = (value & 0x0000ff00) >> 8;
 int retval;

 if (left > 100)
  left = 100;
 if (right > 100)
  right = 100;

 if ((dev < 0) || (dev > 31))
  return -EINVAL;

 if (!(devc->supported_devices & (1 << dev)))


  return -EINVAL;


 switch (devc->model) {
 case 128:
  retval = smw_mixer_set(devc, dev, left, right);
  break;
 case 129:
  retval = ess_mixer_set(devc, dev, left, right);
  break;
 default:
  retval = sb_common_mixer_set(devc, dev, left, right);
 }
 if (retval >= 0) devc->levels[dev] = retval;

 return retval;
}
