
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panel_info {int nt35399_got_int; TYPE_1__* fb_callback; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* func ) (TYPE_1__*) ;} ;


 int IRQ_HANDLED ;
 int nt35399_vsync_wait ;
 int stub1 (TYPE_1__*) ;
 int wake_up (int *) ;

irqreturn_t nt35399_vsync_interrupt(int irq, void *data)
{
 struct panel_info *panel = data;

 panel->nt35399_got_int = 1;

 if (panel->fb_callback) {
  panel->fb_callback->func(panel->fb_callback);
  panel->fb_callback = ((void*)0);
 }

 wake_up(&nt35399_vsync_wait);

 return IRQ_HANDLED;
}
