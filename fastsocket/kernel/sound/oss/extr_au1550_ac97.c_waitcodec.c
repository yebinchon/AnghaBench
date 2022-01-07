
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ac97_codec {int dummy; } ;


 int AC97_POWER_CONTROL ;
 int POLL_COUNT ;
 int PSC_AC97STAT ;
 int PSC_AC97STAT_CR ;
 int au1550_delay (int) ;
 int au_readl (int ) ;
 int au_sync () ;
 int err (char*,...) ;
 int rdcodec (struct ac97_codec*,int ) ;
 int wrcodec (struct ac97_codec*,int ,int ) ;

__attribute__((used)) static void
waitcodec(struct ac97_codec *codec)
{
 u16 temp;
 u32 val;
 int i;




 au1550_delay(10);



 for (i = 0; i < POLL_COUNT; i++) {
  val = au_readl(PSC_AC97STAT);
  au_sync();
  if (val & PSC_AC97STAT_CR)
   break;
 }
 if (i == POLL_COUNT) {
  err("waitcodec: CODEC_READY poll expired!");
  return;
 }



 temp = rdcodec(codec, AC97_POWER_CONTROL);



 if (temp & 0x7f00) {


  wrcodec(codec, AC97_POWER_CONTROL, 0);
  au1550_delay(100);



  temp = rdcodec(codec, AC97_POWER_CONTROL);
 }



 if ((temp & 0x7f0f) != 0x000f)
  err("codec reg 26 status (0x%x) not ready!!", temp);
}
