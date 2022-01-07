
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_segctor_sem; int * ns_gc_inodes_h; int ns_last_segment_lock; int ns_supers; int ns_list; int ns_writer_sem; int ns_mount_mutex; int ns_super_sem; int ns_sem; int ns_ndirtyblks; int ns_count; struct block_device* ns_bdev; } ;
struct block_device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int init_rwsem (int *) ;
 struct the_nilfs* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct the_nilfs *alloc_nilfs(struct block_device *bdev)
{
 struct the_nilfs *nilfs;

 nilfs = kzalloc(sizeof(*nilfs), GFP_KERNEL);
 if (!nilfs)
  return ((void*)0);

 nilfs->ns_bdev = bdev;
 atomic_set(&nilfs->ns_count, 1);
 atomic_set(&nilfs->ns_ndirtyblks, 0);
 init_rwsem(&nilfs->ns_sem);
 init_rwsem(&nilfs->ns_super_sem);
 mutex_init(&nilfs->ns_mount_mutex);
 init_rwsem(&nilfs->ns_writer_sem);
 INIT_LIST_HEAD(&nilfs->ns_list);
 INIT_LIST_HEAD(&nilfs->ns_supers);
 spin_lock_init(&nilfs->ns_last_segment_lock);
 nilfs->ns_gc_inodes_h = ((void*)0);
 init_rwsem(&nilfs->ns_segctor_sem);

 return nilfs;
}
