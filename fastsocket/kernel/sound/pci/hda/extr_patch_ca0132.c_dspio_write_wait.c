
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int VENDOR_DSPIO_STATUS ;
 int VENDOR_STATUS_DSPIO_OK ;
 int VENDOR_STATUS_DSPIO_SCP_RESPONSE_QUEUE_EMPTY ;
 int WIDGET_DSP_CTRL ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void dspio_write_wait(struct hda_codec *codec)
{
 int status;
 unsigned long timeout = jiffies + msecs_to_jiffies(1000);

 do {
  status = snd_hda_codec_read(codec, WIDGET_DSP_CTRL, 0,
      VENDOR_DSPIO_STATUS, 0);
  if ((status == VENDOR_STATUS_DSPIO_OK) ||
      (status == VENDOR_STATUS_DSPIO_SCP_RESPONSE_QUEUE_EMPTY))
   break;
  msleep(1);
 } while (time_before(jiffies, timeout));
}
