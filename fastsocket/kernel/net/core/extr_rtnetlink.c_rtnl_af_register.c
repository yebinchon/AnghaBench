
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_af_ops {int dummy; } ;


 int __rtnl_af_register (struct rtnl_af_ops*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int rtnl_af_register(struct rtnl_af_ops *ops)
{
 int err;

 rtnl_lock();
 err = __rtnl_af_register(ops);
 rtnl_unlock();
 return err;
}
