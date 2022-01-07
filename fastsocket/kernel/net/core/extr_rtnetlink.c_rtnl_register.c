
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtnl_dumpit_func ;
typedef int rtnl_doit_func ;
typedef int rtnl_calcit_func ;


 scalar_t__ __rtnl_register (int,int,int ,int ,int ) ;
 int panic (char*,int,int) ;

void rtnl_register(int protocol, int msgtype,
     rtnl_doit_func doit, rtnl_dumpit_func dumpit,
     rtnl_calcit_func calcit)
{
 if (__rtnl_register(protocol, msgtype, doit, dumpit, calcit) < 0)
  panic("Unable to register rtnetlink message handler, "
        "protocol = %d, message type = %d\n",
        protocol, msgtype);
}
