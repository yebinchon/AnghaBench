
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_trans_dst {int trans_entry; struct netfs_trans* trans; struct netfs_state* state; scalar_t__ send_time; scalar_t__ retries; } ;
struct netfs_trans {int result; int dst_lock; int dst_list; } ;
struct netfs_state {int trans_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int list_add_tail (int *,int *) ;
 struct netfs_trans_dst* mempool_alloc (int ,int ) ;
 int mempool_free (struct netfs_trans_dst*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netfs_trans_dst_pool ;
 int netfs_trans_get (struct netfs_trans*) ;
 int netfs_trans_insert (struct netfs_trans_dst*,struct netfs_state*) ;
 int netfs_trans_put (struct netfs_trans*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int netfs_trans_push_dst(struct netfs_trans *t, struct netfs_state *st)
{
 struct netfs_trans_dst *dst;
 int err;

 dst = mempool_alloc(netfs_trans_dst_pool, GFP_KERNEL);
 if (!dst)
  return -ENOMEM;

 dst->retries = 0;
 dst->send_time = 0;
 dst->state = st;
 dst->trans = t;
 netfs_trans_get(t);

 mutex_lock(&st->trans_lock);
 err = netfs_trans_insert(dst, st);
 mutex_unlock(&st->trans_lock);

 if (err)
  goto err_out_free;

 spin_lock(&t->dst_lock);
 list_add_tail(&dst->trans_entry, &t->dst_list);
 spin_unlock(&t->dst_lock);

 return 0;

err_out_free:
 t->result = err;
 netfs_trans_put(t);
 mempool_free(dst, netfs_trans_dst_pool);
 return err;
}
