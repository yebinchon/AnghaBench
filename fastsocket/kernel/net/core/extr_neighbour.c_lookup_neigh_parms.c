
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct neigh_parms {TYPE_1__* dev; struct neigh_parms* next; } ;
struct neigh_table {struct neigh_parms parms; } ;
struct TYPE_2__ {int ifindex; } ;


 int neigh_parms_net (struct neigh_parms*) ;
 scalar_t__ net_eq (int ,struct net*) ;

__attribute__((used)) static inline struct neigh_parms *lookup_neigh_parms(struct neigh_table *tbl,
            struct net *net, int ifindex)
{
 struct neigh_parms *p;

 for (p = &tbl->parms; p; p = p->next) {
  if ((p->dev && p->dev->ifindex == ifindex && net_eq(neigh_parms_net(p), net)) ||
      (!p->dev && !ifindex))
   return p;
 }

 return ((void*)0);
}
