
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_sb {int mcache_lock; } ;
struct pohmelfs_mcache {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pohmelfs_mcache_remove (struct pohmelfs_sb*,struct pohmelfs_mcache*) ;

void pohmelfs_mcache_remove_locked(struct pohmelfs_sb *psb, struct pohmelfs_mcache *m)
{
 mutex_lock(&psb->mcache_lock);
 pohmelfs_mcache_remove(psb, m);
 mutex_unlock(&psb->mcache_lock);
}
