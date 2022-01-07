
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VEC_pop (int ,int ) ;
 int deferred_access ;
 scalar_t__ deferred_access_no_check ;
 int deferred_access_stack ;

void
pop_deferring_access_checks (void)
{
  if (deferred_access_no_check)
    deferred_access_no_check--;
  else
    VEC_pop (deferred_access, deferred_access_stack);
}
