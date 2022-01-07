
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_trans_dst {int trans_entry; struct netfs_trans* trans; } ;
struct netfs_trans {int dst_lock; } ;


 int list_del_init (int *) ;
 int netfs_trans_remove_dst (struct netfs_trans_dst*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void netfs_trans_drop_dst(struct netfs_trans_dst *dst)
{
 struct netfs_trans *t = dst->trans;

 spin_lock(&t->dst_lock);
 list_del_init(&dst->trans_entry);
 spin_unlock(&t->dst_lock);

 netfs_trans_remove_dst(dst);
}
