
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int prev; int next; } ;
struct buffer_head {struct address_space* b_assoc_map; int b_assoc_buffers; } ;
struct address_space {struct list_head private_list; } ;
typedef int spinlock_t ;


 struct buffer_head* BH_ENTRY (int ) ;
 int EIO ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int WRITE_SYNC_PLUG ;
 int __remove_assoc_queue (struct buffer_head*) ;
 int blk_run_address_space (struct address_space*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_locked (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 int list_add (int *,struct list_head*) ;
 int list_empty (struct list_head*) ;
 int osync_buffers_list (int *,struct list_head*) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_on_buffer (struct buffer_head*) ;
 int write_dirty_buffer (struct buffer_head*,int ) ;

__attribute__((used)) static int fsync_buffers_list(spinlock_t *lock, struct list_head *list)
{
 struct buffer_head *bh;
 struct list_head tmp;
 struct address_space *mapping, *prev_mapping = ((void*)0);
 int err = 0, err2;

 INIT_LIST_HEAD(&tmp);

 spin_lock(lock);
 while (!list_empty(list)) {
  bh = BH_ENTRY(list->next);
  mapping = bh->b_assoc_map;
  __remove_assoc_queue(bh);


  smp_mb();
  if (buffer_dirty(bh) || buffer_locked(bh)) {
   list_add(&bh->b_assoc_buffers, &tmp);
   bh->b_assoc_map = mapping;
   if (buffer_dirty(bh)) {
    get_bh(bh);
    spin_unlock(lock);







    write_dirty_buffer(bh, WRITE_SYNC_PLUG);







    if (prev_mapping && prev_mapping != mapping)
     blk_run_address_space(prev_mapping);
    prev_mapping = mapping;

    brelse(bh);
    spin_lock(lock);
   }
  }
 }

 while (!list_empty(&tmp)) {
  bh = BH_ENTRY(tmp.prev);
  get_bh(bh);
  mapping = bh->b_assoc_map;
  __remove_assoc_queue(bh);


  smp_mb();
  if (buffer_dirty(bh)) {
   list_add(&bh->b_assoc_buffers,
     &mapping->private_list);
   bh->b_assoc_map = mapping;
  }
  spin_unlock(lock);
  wait_on_buffer(bh);
  if (!buffer_uptodate(bh))
   err = -EIO;
  brelse(bh);
  spin_lock(lock);
 }

 spin_unlock(lock);
 err2 = osync_buffers_list(lock, list);
 if (err)
  return err;
 else
  return err2;
}
