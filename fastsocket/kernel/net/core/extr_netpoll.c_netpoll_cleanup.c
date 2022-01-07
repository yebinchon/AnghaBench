
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netpoll {int * dev; } ;


 int __netpoll_cleanup (struct netpoll*) ;
 int dev_put (int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void netpoll_cleanup(struct netpoll *np)
{
 if (!np->dev)
  return;

 rtnl_lock();
 __netpoll_cleanup(np);
 rtnl_unlock();

 dev_put(np->dev);
 np->dev = ((void*)0);
}
