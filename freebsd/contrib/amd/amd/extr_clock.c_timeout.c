
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef scalar_t__ time_t ;
typedef int opaque_t ;
typedef int callout_fun ;
struct TYPE_4__ {scalar_t__ c_time; int c_id; struct TYPE_4__* c_next; int * c_fn; int c_arg; } ;
typedef TYPE_1__ callout ;


 int CID_ALLOC () ;
 TYPE_1__* alloc_callout () ;
 TYPE_1__ callouts ;
 scalar_t__ clocktime (int *) ;
 scalar_t__ next_softclock ;

int
timeout(u_int secs, callout_fun *fn, opaque_t fn_arg)
{
  callout *cp, *cp2;
  time_t t = clocktime(((void*)0)) + secs;




  callout *cpnew = alloc_callout();
  cpnew->c_arg = fn_arg;
  cpnew->c_fn = fn;
  cpnew->c_time = t;
  cpnew->c_id = CID_ALLOC();

  if (t < next_softclock)
    next_softclock = t;




  for (cp = &callouts; (cp2 = cp->c_next); cp = cp2)
    if (cp2->c_time >= t)
      break;




  cp->c_next = cpnew;
  cpnew->c_next = cp2;




  return cpnew->c_id;
}
