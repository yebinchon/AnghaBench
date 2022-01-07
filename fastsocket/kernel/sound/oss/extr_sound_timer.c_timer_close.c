
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int (* tmr_disable ) (int ) ;} ;


 scalar_t__ opened ;
 int stub1 (int ) ;
 TYPE_1__* tmr ;
 scalar_t__ tmr_running ;

__attribute__((used)) static void timer_close(int dev)
{
 opened = tmr_running = 0;
 tmr->tmr_disable(tmr->dev);
}
