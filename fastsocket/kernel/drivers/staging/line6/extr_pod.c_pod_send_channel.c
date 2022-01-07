
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int channel_num; int dumpreq; int line6; } ;


 int line6_dump_finished (int *) ;
 int line6_invalidate_current (int *) ;
 scalar_t__ line6_send_program (int *,int) ;

__attribute__((used)) static void pod_send_channel(struct usb_line6_pod *pod, int value)
{
 line6_invalidate_current(&pod->dumpreq);

 if (line6_send_program(&pod->line6, value) == 0)
  pod->channel_num = value;
 else
  line6_dump_finished(&pod->dumpreq);
}
