
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int seeks; int shrink; } ;
struct TYPE_8__ {TYPE_5__ bt_shrinker; int bt_lru_lock; int bt_lru; int bt_bdi; struct block_device* bt_bdev; int bt_dev; struct xfs_mount* bt_mount; } ;
typedef TYPE_1__ xfs_buftarg_t ;
struct xfs_mount {int dummy; } ;
struct block_device {int bd_dev; } ;


 int DEFAULT_SEEKS ;
 int INIT_LIST_HEAD (int *) ;
 int KM_SLEEP ;
 int blk_get_backing_dev_info (struct block_device*) ;
 int kmem_free (TYPE_1__*) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int register_shrinker (TYPE_5__*) ;
 int spin_lock_init (int *) ;
 scalar_t__ xfs_alloc_delwrite_queue (TYPE_1__*,char const*) ;
 int xfs_buftarg_shrink ;
 scalar_t__ xfs_setsize_buftarg_early (TYPE_1__*,struct block_device*) ;

xfs_buftarg_t *
xfs_alloc_buftarg(
 struct xfs_mount *mp,
 struct block_device *bdev,
 int external,
 const char *fsname)
{
 xfs_buftarg_t *btp;

 btp = kmem_zalloc(sizeof(*btp), KM_SLEEP);

 btp->bt_mount = mp;
 btp->bt_dev = bdev->bd_dev;
 btp->bt_bdev = bdev;
 btp->bt_bdi = blk_get_backing_dev_info(bdev);
 if (!btp->bt_bdi)
  goto error;

 INIT_LIST_HEAD(&btp->bt_lru);
 spin_lock_init(&btp->bt_lru_lock);
 if (xfs_setsize_buftarg_early(btp, bdev))
  goto error;
 if (xfs_alloc_delwrite_queue(btp, fsname))
  goto error;
 btp->bt_shrinker.shrink = xfs_buftarg_shrink;
 btp->bt_shrinker.seeks = DEFAULT_SEEKS;
 register_shrinker(&btp->bt_shrinker);
 return btp;

error:
 kmem_free(btp);
 return ((void*)0);
}
