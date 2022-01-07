
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int dumpreq; int line6; } ;


 int POD_amp_model_setup ;
 int POD_effect_setup ;
 int line6_invalidate_current (int *) ;
 scalar_t__ line6_transmit_parameter (int *,int,int) ;
 int pod_store_parameter (struct usb_line6_pod*,int,int) ;

void pod_transmit_parameter(struct usb_line6_pod *pod, int param, int value)
{
 if (line6_transmit_parameter(&pod->line6, param, value) == 0)
  pod_store_parameter(pod, param, value);

 if ((param == POD_amp_model_setup) || (param == POD_effect_setup))
  line6_invalidate_current(&pod->dumpreq);
}
