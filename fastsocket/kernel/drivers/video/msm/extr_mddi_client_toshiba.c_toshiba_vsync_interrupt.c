
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panel_info {int toshiba_got_int; TYPE_1__* toshiba_callback; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* func ) (TYPE_1__*) ;} ;


 int IRQ_HANDLED ;
 int stub1 (TYPE_1__*) ;
 int toshiba_vsync_wait ;
 int wake_up (int *) ;

irqreturn_t toshiba_vsync_interrupt(int irq, void *data)
{
 struct panel_info *panel = data;

 panel->toshiba_got_int = 1;
 if (panel->toshiba_callback) {
  panel->toshiba_callback->func(panel->toshiba_callback);
  panel->toshiba_callback = 0;
 }
 wake_up(&toshiba_vsync_wait);
 return IRQ_HANDLED;
}
