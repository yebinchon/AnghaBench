
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_4__ {int status; int traps; } ;
typedef TYPE_1__ decContext ;


 int SIGFPE ;
 int raise (int ) ;

decContext *
decContextSetStatus (decContext * context, uInt status)
{
  context->status |= status;
  if (status & context->traps)
    raise (SIGFPE);
  return context;
}
