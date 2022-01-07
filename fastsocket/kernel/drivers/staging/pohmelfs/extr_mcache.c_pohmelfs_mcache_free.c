
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_sb {int dummy; } ;
struct pohmelfs_mcache {int dummy; } ;


 int mempool_free (struct pohmelfs_mcache*,int ) ;
 int pohmelfs_mcache_pool ;
 int pohmelfs_mcache_remove_locked (struct pohmelfs_sb*,struct pohmelfs_mcache*) ;

void pohmelfs_mcache_free(struct pohmelfs_sb *psb, struct pohmelfs_mcache *m)
{
 pohmelfs_mcache_remove_locked(psb, m);

 mempool_free(m, pohmelfs_mcache_pool);
}
