
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link {int * dumpit; } ;
typedef int * rtnl_dumpit_func ;


 size_t PF_UNSPEC ;
 int RTNL_FAMILY_MAX ;
 struct rtnl_link** rtnl_msg_handlers ;

__attribute__((used)) static rtnl_dumpit_func rtnl_get_dumpit(int protocol, int msgindex)
{
 struct rtnl_link *tab;

 if (protocol <= RTNL_FAMILY_MAX)
  tab = rtnl_msg_handlers[protocol];
 else
  tab = ((void*)0);

 if (tab == ((void*)0) || tab[msgindex].dumpit == ((void*)0))
  tab = rtnl_msg_handlers[PF_UNSPEC];

 return tab ? tab[msgindex].dumpit : ((void*)0);
}
