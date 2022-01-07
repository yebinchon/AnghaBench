
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int EIO ;
 unsigned int VENDOR_STATUS_CHIPIO_OK ;
 int WIDGET_CHIP_CTRL ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,unsigned int,unsigned int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int chipio_send(struct hda_codec *codec,
         unsigned int reg,
         unsigned int data)
{
 unsigned int res;
 unsigned long timeout = jiffies + msecs_to_jiffies(1000);


 do {
  res = snd_hda_codec_read(codec, WIDGET_CHIP_CTRL, 0,
      reg, data);
  if (res == VENDOR_STATUS_CHIPIO_OK)
   return 0;
  msleep(20);
 } while (time_before(jiffies, timeout));

 return -EIO;
}
