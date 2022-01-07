
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dev; } ;


 unsigned int WM8993_DCS_CAL_COMPLETE_MASK ;
 int WM8993_DC_SERVO_READBACK_0 ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int msleep (int) ;
 unsigned int snd_soc_read (struct snd_soc_codec*,int ) ;

__attribute__((used)) static void wait_for_dc_servo(struct snd_soc_codec *codec)
{
 unsigned int reg;
 int count = 0;

 dev_dbg(codec->dev, "Waiting for DC servo...\n");
 do {
  count++;
  msleep(1);
  reg = snd_soc_read(codec, WM8993_DC_SERVO_READBACK_0);
  dev_dbg(codec->dev, "DC servo status: %x\n", reg);
 } while ((reg & WM8993_DCS_CAL_COMPLETE_MASK)
   != WM8993_DCS_CAL_COMPLETE_MASK && count < 1000);

 if ((reg & WM8993_DCS_CAL_COMPLETE_MASK)
     != WM8993_DCS_CAL_COMPLETE_MASK)
  dev_err(codec->dev, "Timed out waiting for DC Servo\n");
}
