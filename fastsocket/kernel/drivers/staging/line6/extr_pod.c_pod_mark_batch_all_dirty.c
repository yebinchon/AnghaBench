
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int param_dirty; } ;


 int POD_CONTROL_SIZE ;
 int set_bit (int,int ) ;

__attribute__((used)) static void pod_mark_batch_all_dirty(struct usb_line6_pod *pod)
{
 int i;

 for (i = 0; i < POD_CONTROL_SIZE; i++)
  set_bit(i, pod->param_dirty);
}
