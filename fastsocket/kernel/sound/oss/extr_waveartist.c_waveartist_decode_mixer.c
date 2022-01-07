
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* levels; } ;
typedef TYPE_1__ wavnc_info ;


 int EINVAL ;
__attribute__((used)) static int
waveartist_decode_mixer(wavnc_info *devc, int dev, unsigned char lev_l,
   unsigned char lev_r)
{
 switch (dev) {
 case 128:
 case 129:
 case 130:
 case 134:
 case 131:
 case 136:
 case 133:
 case 132:
  devc->levels[dev] = lev_l | lev_r << 8;
  break;

 case 135:
  break;

 default:
  dev = -EINVAL;
  break;
 }

 return dev;
}
