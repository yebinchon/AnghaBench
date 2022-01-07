
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int netlink_has_listeners (int ,unsigned int) ;
 int nfnl ;

int nfnetlink_has_listeners(unsigned int group)
{
 return netlink_has_listeners(nfnl, group);
}
