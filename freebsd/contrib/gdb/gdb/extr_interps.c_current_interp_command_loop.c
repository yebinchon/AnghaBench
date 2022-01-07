
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data; TYPE_1__* procs; } ;
struct TYPE_3__ {int (* command_loop_proc ) (int ) ;} ;


 int cli_command_loop () ;
 int command_loop () ;
 int command_loop_hook () ;
 TYPE_2__* current_interpreter ;
 scalar_t__ event_loop_p ;
 int stub1 (int ) ;

void
current_interp_command_loop (void)
{



  if (command_loop_hook != ((void*)0))
    command_loop_hook ();
  else if (current_interpreter != ((void*)0)
    && current_interpreter->procs->command_loop_proc != ((void*)0))
    current_interpreter->procs->command_loop_proc (current_interpreter->data);
  else if (event_loop_p)
    cli_command_loop ();
  else
    command_loop ();
}
