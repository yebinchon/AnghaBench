
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct zram {scalar_t__ init_done; TYPE_1__* disk; TYPE_4__* queue; int stat64_lock; int init_lock; int lock; } ;
struct TYPE_15__ {struct zram* queuedata; } ;
struct TYPE_14__ {int kobj; } ;
struct TYPE_13__ {int first_minor; TYPE_4__* queue; int disk_name; struct zram* private_data; int * fops; int major; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int ZRAM_LOGICAL_BLOCK_SIZE ;
 int add_disk (TYPE_1__*) ;
 TYPE_1__* alloc_disk (int) ;
 TYPE_4__* blk_alloc_queue (int ) ;
 int blk_cleanup_queue (TYPE_4__*) ;
 int blk_queue_io_min (TYPE_4__*,int ) ;
 int blk_queue_io_opt (TYPE_4__*,int ) ;
 int blk_queue_logical_block_size (TYPE_4__*,int ) ;
 int blk_queue_make_request (TYPE_4__*,int ) ;
 int blk_queue_physical_block_size (TYPE_4__*,int ) ;
 TYPE_2__* disk_to_dev (TYPE_1__*) ;
 int init_rwsem (int *) ;
 int pr_err (char*,int) ;
 int pr_warning (char*,...) ;
 int set_capacity (TYPE_1__*,int ) ;
 int snprintf (int ,int,char*,int) ;
 int spin_lock_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int zram_devops ;
 int zram_disk_attr_group ;
 int zram_major ;
 int zram_make_request ;

__attribute__((used)) static int create_device(struct zram *zram, int device_id)
{
 int ret = 0;

 init_rwsem(&zram->lock);
 init_rwsem(&zram->init_lock);
 spin_lock_init(&zram->stat64_lock);

 zram->queue = blk_alloc_queue(GFP_KERNEL);
 if (!zram->queue) {
  pr_err("Error allocating disk queue for device %d\n",
   device_id);
  ret = -ENOMEM;
  goto out;
 }

 blk_queue_make_request(zram->queue, zram_make_request);
 zram->queue->queuedata = zram;


 zram->disk = alloc_disk(1);
 if (!zram->disk) {
  blk_cleanup_queue(zram->queue);
  pr_warning("Error allocating disk structure for device %d\n",
   device_id);
  ret = -ENOMEM;
  goto out;
 }

 zram->disk->major = zram_major;
 zram->disk->first_minor = device_id;
 zram->disk->fops = &zram_devops;
 zram->disk->queue = zram->queue;
 zram->disk->private_data = zram;
 snprintf(zram->disk->disk_name, 16, "zram%d", device_id);


 set_capacity(zram->disk, 0);





 blk_queue_physical_block_size(zram->disk->queue, PAGE_SIZE);
 blk_queue_logical_block_size(zram->disk->queue,
     ZRAM_LOGICAL_BLOCK_SIZE);
 blk_queue_io_min(zram->disk->queue, PAGE_SIZE);
 blk_queue_io_opt(zram->disk->queue, PAGE_SIZE);

 add_disk(zram->disk);

 ret = sysfs_create_group(&disk_to_dev(zram->disk)->kobj,
    &zram_disk_attr_group);
 if (ret < 0) {
  pr_warning("Error creating sysfs group");
  goto out;
 }

 zram->init_done = 0;

out:
 return ret;
}
