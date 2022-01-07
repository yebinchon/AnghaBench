
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct interp {int quiet_p; } ;
struct TYPE_2__ {int quiet_p; } ;


 TYPE_1__* current_interpreter ;

int
interp_quiet_p (struct interp *interp)
{
  if (interp != ((void*)0))
    return interp->quiet_p;
  else
    return current_interpreter->quiet_p;
}
