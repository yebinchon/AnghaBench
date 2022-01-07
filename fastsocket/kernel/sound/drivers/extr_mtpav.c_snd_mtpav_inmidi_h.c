
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtpav {int inmidistate; int inmidiport; } ;


 int snd_mtpav_inmidi_process (struct mtpav*,int) ;
 int translate_hwport_to_subdevice (struct mtpav*,int) ;

__attribute__((used)) static void snd_mtpav_inmidi_h(struct mtpav *mcrd, u8 inbyte)
{
 if (inbyte >= 0xf8) {

  snd_mtpav_inmidi_process(mcrd, inbyte);
  return;
 }

 if (mcrd->inmidistate == 0) {
  if (inbyte == 0xf5)
   mcrd->inmidistate = 1;
  else
   snd_mtpav_inmidi_process(mcrd, inbyte);
 } else if (mcrd->inmidistate) {
  mcrd->inmidiport = translate_hwport_to_subdevice(mcrd, inbyte);
  mcrd->inmidistate = 0;
 }
}
