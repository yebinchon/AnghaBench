
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netpoll {int dev; } ;


 int netpoll_poll_dev (int ) ;

void netpoll_poll(struct netpoll *np)
{
 netpoll_poll_dev(np->dev);
}
