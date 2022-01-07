
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link {scalar_t__ calcit; scalar_t__ dumpit; scalar_t__ doit; } ;
typedef scalar_t__ rtnl_dumpit_func ;
typedef scalar_t__ rtnl_doit_func ;
typedef scalar_t__ rtnl_calcit_func ;


 int BUG_ON (int) ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int RTM_NR_MSGTYPES ;
 int RTNL_FAMILY_MAX ;
 struct rtnl_link* kcalloc (int ,int,int ) ;
 int rtm_msgindex (int) ;
 struct rtnl_link** rtnl_msg_handlers ;

int __rtnl_register(int protocol, int msgtype,
      rtnl_doit_func doit, rtnl_dumpit_func dumpit,
      rtnl_calcit_func calcit)
{
 struct rtnl_link *tab;
 int msgindex;

 BUG_ON(protocol < 0 || protocol > RTNL_FAMILY_MAX);
 msgindex = rtm_msgindex(msgtype);

 tab = rtnl_msg_handlers[protocol];
 if (tab == ((void*)0)) {
  tab = kcalloc(RTM_NR_MSGTYPES, sizeof(*tab), GFP_KERNEL);
  if (tab == ((void*)0))
   return -ENOBUFS;

  rtnl_msg_handlers[protocol] = tab;
 }

 if (doit)
  tab[msgindex].doit = doit;

 if (dumpit)
  tab[msgindex].dumpit = dumpit;

 if (calcit)
  tab[msgindex].calcit = calcit;

 return 0;
}
