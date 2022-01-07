
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* control; } ;
struct usb_line6_pod {int dirty; int param_dirty; TYPE_1__ prog_data; } ;


 int set_bit (int,int ) ;

__attribute__((used)) static void pod_store_parameter(struct usb_line6_pod *pod, int param, int value)
{
 pod->prog_data.control[param] = value;
 set_bit(param, pod->param_dirty);
 pod->dirty = 1;
}
