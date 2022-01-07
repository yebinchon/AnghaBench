
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_af_ops {int list; } ;


 int list_add_tail (int *,int *) ;
 int rtnl_af_ops ;

int __rtnl_af_register(struct rtnl_af_ops *ops)
{
 list_add_tail(&ops->list, &rtnl_af_ops);
 return 0;
}
