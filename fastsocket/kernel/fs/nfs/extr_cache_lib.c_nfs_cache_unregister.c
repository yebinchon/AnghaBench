
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_detail {int dummy; } ;


 int rpc_put_mount () ;
 int sunrpc_cache_unregister_pipefs (struct cache_detail*) ;

void nfs_cache_unregister(struct cache_detail *cd)
{
 sunrpc_cache_unregister_pipefs(cd);
 rpc_put_mount();
}
