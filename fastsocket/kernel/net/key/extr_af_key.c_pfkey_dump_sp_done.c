
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int policy; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct pfkey_sock {TYPE_2__ dump; } ;


 int xfrm_policy_walk_done (int *) ;

__attribute__((used)) static void pfkey_dump_sp_done(struct pfkey_sock *pfk)
{
 xfrm_policy_walk_done(&pfk->dump.u.policy);
}
