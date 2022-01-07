
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy_afinfo {int dummy; } ;


 int rcu_read_unlock () ;

__attribute__((used)) static void xfrm_policy_put_afinfo(struct xfrm_policy_afinfo *afinfo)
{
 rcu_read_unlock();
}
