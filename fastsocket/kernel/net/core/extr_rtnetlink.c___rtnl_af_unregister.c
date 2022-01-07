
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_af_ops {int list; } ;


 int list_del (int *) ;

void __rtnl_af_unregister(struct rtnl_af_ops *ops)
{
 list_del(&ops->list);
}
