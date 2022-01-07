
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct the_nilfs {int ns_mount_mutex; int ns_super_sem; TYPE_2__* ns_current; } ;
struct super_block {int s_flags; int s_umount; int s_id; int s_root; } ;
struct nilfs_super_data {int flags; struct super_block* bdev; scalar_t__ sbi; scalar_t__ cno; } ;
struct file_system_type {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s_super; } ;
struct TYPE_3__ {int s_flags; } ;


 int BDEVNAME_SIZE ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct super_block*) ;
 int MS_ACTIVE ;
 int MS_RDONLY ;
 int MS_VERBOSE ;
 int PTR_ERR (struct super_block*) ;
 int bdevname (struct super_block*,char*) ;
 int block_size (struct super_block*) ;
 int close_bdev_exclusive (struct super_block*,int) ;
 int deactivate_super (struct super_block*) ;
 int down_read (int *) ;
 struct the_nilfs* find_or_create_nilfs (struct super_block*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nilfs_fill_super (struct super_block*,void*,int,struct the_nilfs*) ;
 scalar_t__ nilfs_find_sbinfo (struct the_nilfs*,int,scalar_t__) ;
 scalar_t__ nilfs_identify (char*,struct nilfs_super_data*) ;
 int nilfs_put_sbinfo (scalar_t__) ;
 int nilfs_set_bdev_super ;
 int nilfs_test_bdev_super ;
 struct super_block* open_bdev_exclusive (char const*,int,struct file_system_type*) ;
 int put_nilfs (struct the_nilfs*) ;
 int sb_set_blocksize (struct super_block*,int ) ;
 struct super_block* sget (struct file_system_type*,int ,int ,struct nilfs_super_data*) ;
 int simple_set_mnt (struct vfsmount*,struct super_block*) ;
 int strlcpy (int ,int ,int) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int
nilfs_get_sb(struct file_system_type *fs_type, int flags,
      const char *dev_name, void *data, struct vfsmount *mnt)
{
 struct nilfs_super_data sd;
 struct super_block *s;
 struct the_nilfs *nilfs;
 int err, need_to_close = 1;

 sd.bdev = open_bdev_exclusive(dev_name, flags, fs_type);
 if (IS_ERR(sd.bdev))
  return PTR_ERR(sd.bdev);







 sd.cno = 0;
 sd.flags = flags;
 if (nilfs_identify((char *)data, &sd)) {
  err = -EINVAL;
  goto failed;
 }

 nilfs = find_or_create_nilfs(sd.bdev);
 if (!nilfs) {
  err = -ENOMEM;
  goto failed;
 }

 mutex_lock(&nilfs->ns_mount_mutex);

 if (!sd.cno) {






  down_read(&nilfs->ns_super_sem);
  if (nilfs->ns_current &&
      ((nilfs->ns_current->s_super->s_flags ^ flags)
       & MS_RDONLY)) {
   up_read(&nilfs->ns_super_sem);
   err = -EBUSY;
   goto failed_unlock;
  }
  up_read(&nilfs->ns_super_sem);
 }




 sd.sbi = nilfs_find_sbinfo(nilfs, !(flags & MS_RDONLY), sd.cno);






 s = sget(fs_type, nilfs_test_bdev_super, nilfs_set_bdev_super, &sd);
 if (sd.sbi)
  nilfs_put_sbinfo(sd.sbi);

 if (IS_ERR(s)) {
  err = PTR_ERR(s);
  goto failed_unlock;
 }

 if (!s->s_root) {
  char b[BDEVNAME_SIZE];


  s->s_flags = flags;
  strlcpy(s->s_id, bdevname(sd.bdev, b), sizeof(s->s_id));
  sb_set_blocksize(s, block_size(sd.bdev));

  err = nilfs_fill_super(s, data, flags & MS_VERBOSE, nilfs);
  if (err)
   goto cancel_new;

  s->s_flags |= MS_ACTIVE;
  need_to_close = 0;
 }

 mutex_unlock(&nilfs->ns_mount_mutex);
 put_nilfs(nilfs);
 if (need_to_close)
  close_bdev_exclusive(sd.bdev, flags);
 simple_set_mnt(mnt, s);
 return 0;

 failed_unlock:
 mutex_unlock(&nilfs->ns_mount_mutex);
 put_nilfs(nilfs);
 failed:
 close_bdev_exclusive(sd.bdev, flags);

 return err;

 cancel_new:

 mutex_unlock(&nilfs->ns_mount_mutex);
 put_nilfs(nilfs);
 up_write(&s->s_umount);
 deactivate_super(s);





 return err;
}
