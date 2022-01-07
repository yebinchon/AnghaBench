
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rcu_head; } ;
struct TYPE_3__ {TYPE_2__ dst; } ;
struct dn_route {TYPE_1__ u; } ;


 int call_rcu_bh (int *,int ) ;
 int dst_rcu_free ;
 int dst_release (TYPE_2__*) ;

__attribute__((used)) static inline void dnrt_drop(struct dn_route *rt)
{
 dst_release(&rt->u.dst);
 call_rcu_bh(&rt->u.dst.rcu_head, dst_rcu_free);
}
