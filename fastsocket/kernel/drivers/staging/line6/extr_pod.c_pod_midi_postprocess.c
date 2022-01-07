
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int dumpreq; int midi_postprocess; } ;


 unsigned char LINE6_CHANNEL_HOST ;
 unsigned char LINE6_PARAM_CHANGE ;
 unsigned char LINE6_PROGRAM_CHANGE ;
 unsigned char POD_amp_model_setup ;
 unsigned char POD_effect_setup ;
 int line6_invalidate_current (int *) ;

void pod_midi_postprocess(struct usb_line6_pod *pod, unsigned char *data, int length)
{
 int i;

 if (!pod->midi_postprocess)
  return;

 for (i = 0; i < length; ++i) {
  if (data[i] == (LINE6_PROGRAM_CHANGE | LINE6_CHANNEL_HOST)) {
   line6_invalidate_current(&pod->dumpreq);
   break;
  } else if ((data[i] == (LINE6_PARAM_CHANGE | LINE6_CHANNEL_HOST)) && (i < length - 1))
   if ((data[i + 1] == POD_amp_model_setup) || (data[i + 1] == POD_effect_setup)) {
    line6_invalidate_current(&pod->dumpreq);
    break;
   }
 }
}
