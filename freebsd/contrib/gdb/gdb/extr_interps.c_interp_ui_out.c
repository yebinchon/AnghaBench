
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_out {int dummy; } ;
struct interp {struct ui_out* interpreter_out; } ;
struct TYPE_2__ {struct ui_out* interpreter_out; } ;


 TYPE_1__* current_interpreter ;

struct ui_out *
interp_ui_out (struct interp *interp)
{
  if (interp != ((void*)0))
    return interp->interpreter_out;

  return current_interpreter->interpreter_out;
}
