
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data; TYPE_1__* procs; } ;
struct TYPE_3__ {int (* prompt_proc_p ) (int ) ;} ;


 TYPE_2__* current_interpreter ;
 int stub1 (int ) ;

int
current_interp_display_prompt_p (void)
{
  if (current_interpreter == ((void*)0)
      || current_interpreter->procs->prompt_proc_p == ((void*)0))
    return 0;
  else
    return current_interpreter->procs->prompt_proc_p (current_interpreter->
            data);
}
