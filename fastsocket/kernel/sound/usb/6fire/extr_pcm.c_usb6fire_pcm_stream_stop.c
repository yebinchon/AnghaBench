
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcm_runtime {scalar_t__ stream_state; TYPE_1__* out_urbs; TYPE_3__* in_urbs; TYPE_2__* chip; } ;
struct control_runtime {int usb_streaming; int (* update_streaming ) (struct control_runtime*) ;} ;
struct TYPE_6__ {int instance; } ;
struct TYPE_5__ {struct control_runtime* control; } ;
struct TYPE_4__ {int instance; } ;


 int PCM_N_URBS ;
 scalar_t__ STREAM_DISABLED ;
 int stub1 (struct control_runtime*) ;
 int usb_kill_urb (int *) ;

__attribute__((used)) static void usb6fire_pcm_stream_stop(struct pcm_runtime *rt)
{
 int i;
 struct control_runtime *ctrl_rt = rt->chip->control;

 if (rt->stream_state != STREAM_DISABLED) {
  for (i = 0; i < PCM_N_URBS; i++) {
   usb_kill_urb(&rt->in_urbs[i].instance);
   usb_kill_urb(&rt->out_urbs[i].instance);
  }
  ctrl_rt->usb_streaming = 0;
  ctrl_rt->update_streaming(ctrl_rt);
  rt->stream_state = STREAM_DISABLED;
 }
}
