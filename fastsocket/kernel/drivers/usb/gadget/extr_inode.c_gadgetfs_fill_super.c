
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; struct dentry* s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; } ;
struct inode {int * i_op; } ;
struct dev_data {int dentry; struct super_block* sb; } ;
struct dentry {int dummy; } ;


 int CHIP ;
 int ENODEV ;
 int ENOMEM ;
 int ESRCH ;
 int GADGETFS_MAGIC ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 struct dentry* d_alloc_root (struct inode*) ;
 int dev_init_operations ;
 struct dev_data* dev_new () ;
 int dput (struct dentry*) ;
 int gadget_fs_operations ;
 int gadgetfs_create_file (struct super_block*,int ,struct dev_data*,int *,int *) ;
 struct inode* gadgetfs_make_inode (struct super_block*,int *,int *,int) ;
 int iput (struct inode*) ;
 int probe_driver ;
 int put_dev (struct dev_data*) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;
 struct dev_data* the_device ;
 int usb_gadget_register_driver (int *) ;

__attribute__((used)) static int
gadgetfs_fill_super (struct super_block *sb, void *opts, int silent)
{
 struct inode *inode;
 struct dentry *d;
 struct dev_data *dev;

 if (the_device)
  return -ESRCH;


 (void) usb_gadget_register_driver (&probe_driver);
 if (!CHIP)
  return -ENODEV;


 sb->s_blocksize = PAGE_CACHE_SIZE;
 sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
 sb->s_magic = GADGETFS_MAGIC;
 sb->s_op = &gadget_fs_operations;
 sb->s_time_gran = 1;


 inode = gadgetfs_make_inode (sb,
   ((void*)0), &simple_dir_operations,
   S_IFDIR | S_IRUGO | S_IXUGO);
 if (!inode)
  goto enomem0;
 inode->i_op = &simple_dir_inode_operations;
 if (!(d = d_alloc_root (inode)))
  goto enomem1;
 sb->s_root = d;




 dev = dev_new ();
 if (!dev)
  goto enomem2;

 dev->sb = sb;
 if (!gadgetfs_create_file (sb, CHIP,
    dev, &dev_init_operations,
    &dev->dentry))
  goto enomem3;




 the_device = dev;
 return 0;

enomem3:
 put_dev (dev);
enomem2:
 dput (d);
enomem1:
 iput (inode);
enomem0:
 return -ENOMEM;
}
