
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_detail {int dummy; } ;


 int cache_unregister_net (struct cache_detail*,int *) ;
 int init_net ;

void cache_unregister(struct cache_detail *cd)
{
 cache_unregister_net(cd, &init_net);
}
