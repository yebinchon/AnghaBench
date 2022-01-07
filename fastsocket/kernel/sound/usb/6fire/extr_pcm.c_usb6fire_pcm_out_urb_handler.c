
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {struct pcm_urb* context; } ;
struct pcm_urb {TYPE_1__* chip; } ;
struct pcm_runtime {scalar_t__ stream_state; int stream_wait_cond; int stream_wait_queue; } ;
struct TYPE_2__ {struct pcm_runtime* pcm; } ;


 scalar_t__ STREAM_STARTING ;
 int wake_up (int *) ;

__attribute__((used)) static void usb6fire_pcm_out_urb_handler(struct urb *usb_urb)
{
 struct pcm_urb *urb = usb_urb->context;
 struct pcm_runtime *rt = urb->chip->pcm;

 if (rt->stream_state == STREAM_STARTING) {
  rt->stream_wait_cond = 1;
  wake_up(&rt->stream_wait_queue);
 }
}
