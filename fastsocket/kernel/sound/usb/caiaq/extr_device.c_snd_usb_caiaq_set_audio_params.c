
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct snd_usb_caiaqdev {int audio_parm_answer; int bpp; int ep1_wait_queue; } ;


 char DEPTH_16 ;
 char DEPTH_24 ;
 int EINVAL ;
 int EP1_CMD_AUDIO_PARAMS ;
 int EPIPE ;
 int HZ ;
 char SAMPLERATE_192000 ;
 char SAMPLERATE_44100 ;
 char SAMPLERATE_48000 ;
 char SAMPLERATE_88200 ;
 char SAMPLERATE_96000 ;
 int debug (char*,...) ;
 int snd_usb_caiaq_send_command (struct snd_usb_caiaqdev*,int ,char*,int) ;
 int wait_event_timeout (int ,int,int ) ;

int snd_usb_caiaq_set_audio_params (struct snd_usb_caiaqdev *dev,
           int rate, int depth, int bpp)
{
 int ret;
 char tmp[5];

 switch (rate) {
 case 44100: tmp[0] = SAMPLERATE_44100; break;
 case 48000: tmp[0] = SAMPLERATE_48000; break;
 case 88200: tmp[0] = SAMPLERATE_88200; break;
 case 96000: tmp[0] = SAMPLERATE_96000; break;
 case 192000: tmp[0] = SAMPLERATE_192000; break;
 default: return -EINVAL;
 }

 switch (depth) {
 case 16: tmp[1] = DEPTH_16; break;
 case 24: tmp[1] = DEPTH_24; break;
 default: return -EINVAL;
 }

 tmp[2] = bpp & 0xff;
 tmp[3] = bpp >> 8;
 tmp[4] = 1;

 debug("setting audio params: %d Hz, %d bits, %d bpp\n",
  rate, depth, bpp);

 dev->audio_parm_answer = -1;
 ret = snd_usb_caiaq_send_command(dev, EP1_CMD_AUDIO_PARAMS,
      tmp, sizeof(tmp));

 if (ret)
  return ret;

 if (!wait_event_timeout(dev->ep1_wait_queue,
     dev->audio_parm_answer >= 0, HZ))
  return -EPIPE;

 if (dev->audio_parm_answer != 1)
  debug("unable to set the device's audio params\n");
 else
  dev->bpp = bpp;

 return dev->audio_parm_answer == 1 ? 0 : -EINVAL;
}
