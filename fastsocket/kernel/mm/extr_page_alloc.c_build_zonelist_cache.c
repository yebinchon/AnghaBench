
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* node_zonelists; } ;
typedef TYPE_2__ pg_data_t ;
struct TYPE_4__ {int * zlcache_ptr; } ;



__attribute__((used)) static void build_zonelist_cache(pg_data_t *pgdat)
{
 pgdat->node_zonelists[0].zlcache_ptr = ((void*)0);
}
