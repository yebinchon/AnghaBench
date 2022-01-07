
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventpoll {scalar_t__ ovflist; int rdllist; } ;


 scalar_t__ EP_UNACTIVE_PTR ;
 int list_empty (int *) ;

__attribute__((used)) static inline int ep_events_available(struct eventpoll *ep)
{
 return !list_empty(&ep->rdllist) || ep->ovflist != EP_UNACTIVE_PTR;
}
