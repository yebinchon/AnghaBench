
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int deferring_access_checks_kind; } ;


 TYPE_1__* VEC_last (int ,int ) ;
 int deferred_access ;
 int deferred_access_no_check ;
 int deferred_access_stack ;
 int dk_deferred ;

void
resume_deferring_access_checks (void)
{
  if (!deferred_access_no_check)
    VEC_last (deferred_access, deferred_access_stack)
      ->deferring_access_checks_kind = dk_deferred;
}
