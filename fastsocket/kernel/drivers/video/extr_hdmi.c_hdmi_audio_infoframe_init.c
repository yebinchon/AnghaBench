
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_audio_infoframe {int version; int length; int type; } ;


 int HDMI_INFOFRAME_TYPE_AUDIO ;
 int memset (struct hdmi_audio_infoframe*,int ,int) ;

int hdmi_audio_infoframe_init(struct hdmi_audio_infoframe *frame)
{
 memset(frame, 0, sizeof(*frame));

 frame->type = HDMI_INFOFRAME_TYPE_AUDIO;
 frame->version = 1;
 frame->length = 10;

 return 0;
}
