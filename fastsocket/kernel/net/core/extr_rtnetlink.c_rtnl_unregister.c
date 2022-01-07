
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dumpit; int * doit; } ;


 int BUG_ON (int) ;
 int ENOENT ;
 int RTNL_FAMILY_MAX ;
 int rtm_msgindex (int) ;
 TYPE_1__** rtnl_msg_handlers ;

int rtnl_unregister(int protocol, int msgtype)
{
 int msgindex;

 BUG_ON(protocol < 0 || protocol > RTNL_FAMILY_MAX);
 msgindex = rtm_msgindex(msgtype);

 if (rtnl_msg_handlers[protocol] == ((void*)0))
  return -ENOENT;

 rtnl_msg_handlers[protocol][msgindex].doit = ((void*)0);
 rtnl_msg_handlers[protocol][msgindex].dumpit = ((void*)0);

 return 0;
}
