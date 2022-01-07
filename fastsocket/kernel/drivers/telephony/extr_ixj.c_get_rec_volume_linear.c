
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cardtype; } ;
typedef TYPE_1__ IXJ ;







 int get_rec_volume (TYPE_1__*) ;

__attribute__((used)) static int get_rec_volume_linear(IXJ *j)
{
 int volume, newvolume, dsprecmax;

 switch (j->cardtype) {
 case 130:
  dsprecmax = 0x440;
  break;
 case 132:
  dsprecmax = 0x180;
  break;
 case 129:
  dsprecmax = 0x4C0;
  break;
 case 128:
  dsprecmax = 0x100;
  break;
 case 131:
  dsprecmax = 0x400;
  break;
 default:
  return -1;
 }
 volume = get_rec_volume(j);
 newvolume = (volume * 100) / dsprecmax;
 if(newvolume > 100)
  newvolume = 100;
 return newvolume;
}
