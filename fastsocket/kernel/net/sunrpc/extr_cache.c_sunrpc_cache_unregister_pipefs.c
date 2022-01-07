
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dir; } ;
struct TYPE_4__ {TYPE_1__ pipefs; } ;
struct cache_detail {TYPE_2__ u; } ;


 int rpc_remove_cache_dir (int *) ;
 int sunrpc_destroy_cache_detail (struct cache_detail*) ;

void sunrpc_cache_unregister_pipefs(struct cache_detail *cd)
{
 rpc_remove_cache_dir(cd->u.pipefs.dir);
 cd->u.pipefs.dir = ((void*)0);
 sunrpc_destroy_cache_detail(cd);
}
