
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hdmi_audio_infoframe {scalar_t__ checksum; } ;



__attribute__((used)) static void hdmi_checksum_audio_infoframe(struct hdmi_audio_infoframe *hdmi_ai)
{
 u8 *bytes = (u8 *)hdmi_ai;
 u8 sum = 0;
 int i;

 hdmi_ai->checksum = 0;

 for (i = 0; i < sizeof(*hdmi_ai); i++)
  sum += bytes[i];

 hdmi_ai->checksum = -sum;
}
