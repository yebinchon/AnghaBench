
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int RTNL_FAMILY_MAX ;
 int kfree (int *) ;
 int ** rtnl_msg_handlers ;

void rtnl_unregister_all(int protocol)
{
 BUG_ON(protocol < 0 || protocol > RTNL_FAMILY_MAX);

 kfree(rtnl_msg_handlers[protocol]);
 rtnl_msg_handlers[protocol] = ((void*)0);
}
