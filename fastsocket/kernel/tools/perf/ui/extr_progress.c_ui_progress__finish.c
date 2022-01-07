
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* finish ) () ;} ;


 TYPE_1__* progress_fns ;
 int stub1 () ;

void ui_progress__finish(void)
{
 if (progress_fns->finish)
  progress_fns->finish();
}
