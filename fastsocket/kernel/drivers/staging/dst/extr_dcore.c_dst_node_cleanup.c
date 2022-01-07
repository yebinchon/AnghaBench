
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_state {int need_exit; int thread_wait; } ;
struct dst_node {struct dst_state* state; scalar_t__ bdev; TYPE_1__* disk; scalar_t__ queue; } ;
struct TYPE_2__ {int first_minor; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int blk_cleanup_queue (scalar_t__) ;
 int blkdev_put (scalar_t__,int) ;
 int dst_hash_lock ;
 int dst_index_idr ;
 int dst_state_exit_connected (struct dst_state*) ;
 int dst_state_lock (struct dst_state*) ;
 int dst_state_put (struct dst_state*) ;
 int dst_state_unlock (struct dst_state*) ;
 int idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_disk (TYPE_1__*) ;
 int sync_blockdev (scalar_t__) ;
 int wake_up (int *) ;

__attribute__((used)) static void dst_node_cleanup(struct dst_node *n)
{
 struct dst_state *st = n->state;

 if (!st)
  return;

 if (n->queue) {
  blk_cleanup_queue(n->queue);

  mutex_lock(&dst_hash_lock);
  idr_remove(&dst_index_idr, n->disk->first_minor);
  mutex_unlock(&dst_hash_lock);

  put_disk(n->disk);
 }

 if (n->bdev) {
  sync_blockdev(n->bdev);
  blkdev_put(n->bdev, FMODE_READ|FMODE_WRITE);
 }

 dst_state_lock(st);
 st->need_exit = 1;
 dst_state_exit_connected(st);
 dst_state_unlock(st);

 wake_up(&st->thread_wait);

 dst_state_put(st);
 n->state = ((void*)0);
}
