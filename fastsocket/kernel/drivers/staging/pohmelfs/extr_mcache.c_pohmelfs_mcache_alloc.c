
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pohmelfs_sb {int mcache_lock; int mcache_gen; } ;
struct pohmelfs_mcache {unsigned int size; int gen; int start; void* data; int refcnt; int err; int complete; } ;


 int ENOMEM ;
 struct pohmelfs_mcache* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int atomic_long_inc_return (int *) ;
 int atomic_set (int *,int) ;
 int init_completion (int *) ;
 struct pohmelfs_mcache* mempool_alloc (int ,int ) ;
 int mempool_free (struct pohmelfs_mcache*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pohmelfs_mcache_insert (struct pohmelfs_sb*,struct pohmelfs_mcache*) ;
 int pohmelfs_mcache_pool ;

struct pohmelfs_mcache *pohmelfs_mcache_alloc(struct pohmelfs_sb *psb, u64 start,
  unsigned int size, void *data)
{
 struct pohmelfs_mcache *m;
 int err = -ENOMEM;

 m = mempool_alloc(pohmelfs_mcache_pool, GFP_KERNEL);
 if (!m)
  goto err_out_exit;

 init_completion(&m->complete);
 m->err = 0;
 atomic_set(&m->refcnt, 1);
 m->data = data;
 m->start = start;
 m->size = size;
 m->gen = atomic_long_inc_return(&psb->mcache_gen);

 mutex_lock(&psb->mcache_lock);
 err = pohmelfs_mcache_insert(psb, m);
 mutex_unlock(&psb->mcache_lock);
 if (err)
  goto err_out_free;

 return m;

err_out_free:
 mempool_free(m, pohmelfs_mcache_pool);
err_out_exit:
 return ERR_PTR(err);
}
