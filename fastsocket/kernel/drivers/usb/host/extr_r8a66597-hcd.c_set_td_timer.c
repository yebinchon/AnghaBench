
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8a66597_td {size_t pipenum; TYPE_1__* urb; } ;
struct r8a66597 {int timeout_map; int * td_timer; int * pipe_queue; } ;
struct TYPE_2__ {int pipe; } ;


 int BUG_ON (int) ;


 scalar_t__ jiffies ;
 int list_empty (int *) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned long) ;
 int usb_pipecontrol (int ) ;
 scalar_t__ usb_pipein (int ) ;
 int usb_pipetype (int ) ;

__attribute__((used)) static void set_td_timer(struct r8a66597 *r8a66597, struct r8a66597_td *td)
{
 unsigned long time;

 BUG_ON(!td);

 if (!list_empty(&r8a66597->pipe_queue[td->pipenum]) &&
     !usb_pipecontrol(td->urb->pipe) && usb_pipein(td->urb->pipe)) {
  r8a66597->timeout_map |= 1 << td->pipenum;
  switch (usb_pipetype(td->urb->pipe)) {
  case 129:
  case 128:
   time = 30;
   break;
  default:
   time = 300;
   break;
  }

  mod_timer(&r8a66597->td_timer[td->pipenum],
     jiffies + msecs_to_jiffies(time));
 }
}
