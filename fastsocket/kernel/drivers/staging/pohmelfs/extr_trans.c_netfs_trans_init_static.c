
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_trans {int page_num; int total_size; int dst_list; int dst_lock; int refcnt; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void netfs_trans_init_static(struct netfs_trans *t, int num, int size)
{
 t->page_num = num;
 t->total_size = size;
 atomic_set(&t->refcnt, 1);

 spin_lock_init(&t->dst_lock);
 INIT_LIST_HEAD(&t->dst_list);
}
