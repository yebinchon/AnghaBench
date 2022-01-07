
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {scalar_t__ s_bdev; } ;
struct TYPE_5__ {char* name; int ra_pages; int capabilities; int unplug_io_fn; } ;
struct fuse_conn {int bdi_initialized; TYPE_1__ bdi; int dev; } ;


 int BDI_CAP_NO_ACCT_WB ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int PAGE_CACHE_SIZE ;
 int VM_MAX_READAHEAD ;
 int bdi_init (TYPE_1__*) ;
 int bdi_register (TYPE_1__*,int *,char*,int ,int ) ;
 int bdi_register_dev (TYPE_1__*,int ) ;
 int bdi_set_max_ratio (TYPE_1__*,int) ;
 int default_unplug_io_fn ;

__attribute__((used)) static int fuse_bdi_init(struct fuse_conn *fc, struct super_block *sb)
{
 int err;

 fc->bdi.name = "fuse";
 fc->bdi.ra_pages = (VM_MAX_READAHEAD * 1024) / PAGE_CACHE_SIZE;
 fc->bdi.unplug_io_fn = default_unplug_io_fn;

 fc->bdi.capabilities = BDI_CAP_NO_ACCT_WB;

 err = bdi_init(&fc->bdi);
 if (err)
  return err;

 fc->bdi_initialized = 1;

 if (sb->s_bdev) {
  err = bdi_register(&fc->bdi, ((void*)0), "%u:%u-fuseblk",
        MAJOR(fc->dev), MINOR(fc->dev));
 } else {
  err = bdi_register_dev(&fc->bdi, fc->dev);
 }

 if (err)
  return err;
 bdi_set_max_ratio(&fc->bdi, 1);

 return 0;
}
