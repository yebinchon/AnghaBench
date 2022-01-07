
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_frags {int lru_list; int mem; scalar_t__ nqueues; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;

void inet_frags_init_net(struct netns_frags *nf)
{
 nf->nqueues = 0;
 atomic_set(&nf->mem, 0);
 INIT_LIST_HEAD(&nf->lru_list);
}
