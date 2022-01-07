
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cardtype; int port; } ;
typedef TYPE_1__ IXJ ;


 int PORT_PSTN ;





 int get_play_volume (TYPE_1__*) ;

__attribute__((used)) static int get_play_volume_linear(IXJ *j)
{
 int volume, newvolume, dspplaymax;


 switch (j->cardtype) {
 case 130:
  dspplaymax = 0x380;
  break;
 case 132:
  if(j->port == PORT_PSTN) {
   dspplaymax = 0x48;
  } else {
   dspplaymax = 0x100;
  }
  break;
 case 129:
  dspplaymax = 0x380;
  break;
 case 128:
  dspplaymax = 0x6C;
  break;
 case 131:
  dspplaymax = 100;
  break;
 default:
  return -1;
 }
 volume = get_play_volume(j);
 newvolume = (volume * 100) / dspplaymax;
 if(newvolume > 100)
  newvolume = 100;
 return newvolume;
}
