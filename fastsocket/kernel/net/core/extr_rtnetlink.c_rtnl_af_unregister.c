
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_af_ops {int dummy; } ;


 int __rtnl_af_unregister (struct rtnl_af_ops*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void rtnl_af_unregister(struct rtnl_af_ops *ops)
{
 rtnl_lock();
 __rtnl_af_unregister(ops);
 rtnl_unlock();
}
