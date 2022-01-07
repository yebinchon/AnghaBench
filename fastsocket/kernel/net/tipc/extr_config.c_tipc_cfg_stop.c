
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ user_ref; } ;


 TYPE_1__ mng ;
 int tipc_detach (scalar_t__) ;

void tipc_cfg_stop(void)
{
 if (mng.user_ref) {
  tipc_detach(mng.user_ref);
  mng.user_ref = 0;
 }
}
