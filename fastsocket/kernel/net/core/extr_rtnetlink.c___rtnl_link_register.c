
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {int list; scalar_t__ dellink; } ;


 int link_ops ;
 int list_add_tail (int *,int *) ;
 scalar_t__ unregister_netdevice ;

int __rtnl_link_register(struct rtnl_link_ops *ops)
{
 if (!ops->dellink)
  ops->dellink = unregister_netdevice;

 list_add_tail(&ops->list, &link_ops);
 return 0;
}
