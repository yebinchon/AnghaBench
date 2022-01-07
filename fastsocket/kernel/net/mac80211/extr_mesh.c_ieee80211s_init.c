
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmc_entry {int dummy; } ;


 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int mesh_allocated ;
 int mesh_pathtbl_init () ;
 int rm_cache ;

void ieee80211s_init(void)
{
 mesh_pathtbl_init();
 mesh_allocated = 1;
 rm_cache = kmem_cache_create("mesh_rmc", sizeof(struct rmc_entry),
         0, 0, ((void*)0));
}
