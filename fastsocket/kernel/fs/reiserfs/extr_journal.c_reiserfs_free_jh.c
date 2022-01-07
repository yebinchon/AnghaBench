
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_jh {int list; int * bh; } ;
struct buffer_head {struct reiserfs_jh* b_private; } ;


 int BUG () ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int kfree (struct reiserfs_jh*) ;
 int list_del_init (int *) ;
 int nr_reiserfs_jh ;
 int put_bh (struct buffer_head*) ;

void reiserfs_free_jh(struct buffer_head *bh)
{
 struct reiserfs_jh *jh;

 jh = bh->b_private;
 if (jh) {
  bh->b_private = ((void*)0);
  jh->bh = ((void*)0);
  list_del_init(&jh->list);
  kfree(jh);
  if (atomic_read(&nr_reiserfs_jh) <= 0)
   BUG();
  atomic_dec(&nr_reiserfs_jh);
  put_bh(bh);
 }
}
