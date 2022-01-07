
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct cache_detail {int dummy; } ;


 int remove_cache_proc_entries (struct cache_detail*,struct net*) ;
 int sunrpc_destroy_cache_detail (struct cache_detail*) ;

void cache_unregister_net(struct cache_detail *cd, struct net *net)
{
 remove_cache_proc_entries(cd, net);
 sunrpc_destroy_cache_detail(cd);
}
