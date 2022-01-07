
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rcu_head; } ;
struct TYPE_4__ {TYPE_1__ dst; } ;
struct rtable {TYPE_2__ u; } ;


 int call_rcu_bh (int *,int ) ;
 int dst_rcu_free ;

__attribute__((used)) static inline void rt_free(struct rtable *rt)
{
 call_rcu_bh(&rt->u.dst.rcu_head, dst_rcu_free);
}
