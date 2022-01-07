
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct vfsmount {struct super_block* mnt_root; struct super_block* mnt_sb; } ;
struct super_block {int s_flags; int s_id; scalar_t__ s_root; struct super_block* d_sb; } ;
struct file_system_type {int dummy; } ;
struct dentry {int s_flags; int s_id; scalar_t__ s_root; struct dentry* d_sb; } ;
struct btrfs_fs_info {void* super_for_commit; void* super_copy; struct btrfs_fs_devices* fs_devices; } ;
struct btrfs_fs_devices {scalar_t__ rw_devices; struct block_device* latest_bdev; } ;
struct block_device {int dummy; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct file_system_type* bdev_holder; } ;


 int BDEVNAME_SIZE ;
 int BTRFS_SUPER_INFO_SIZE ;
 int EACCES ;
 int EBUSY ;
 int ENOMEM ;
 struct super_block* ERR_PTR (int) ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct super_block*) ;
 int MS_RDONLY ;
 int MS_SILENT ;
 int PTR_ERR (struct super_block*) ;
 int bdevname (struct block_device*,char*) ;
 int btrfs_close_devices (struct btrfs_fs_devices*) ;
 int btrfs_fill_super (struct super_block*,struct btrfs_fs_devices*,void*,int) ;
 int btrfs_open_devices (struct btrfs_fs_devices*,int ,struct file_system_type*) ;
 int btrfs_parse_early_options (void*,int ,struct file_system_type*,char**,int *,int *,struct btrfs_fs_devices**) ;
 TYPE_1__* btrfs_sb (struct super_block*) ;
 int btrfs_scan_one_device (char const*,int ,struct file_system_type*,struct btrfs_fs_devices**) ;
 int btrfs_set_super ;
 int btrfs_test_super ;
 int deactivate_locked_super (struct super_block*) ;
 int free_fs_info (struct btrfs_fs_info*) ;
 struct super_block* get_default_root (struct super_block*,int ) ;
 int kfree (char*) ;
 void* kzalloc (int,int ) ;
 struct super_block* mount_subvol (char*,int,char const*,void*) ;
 struct super_block* sget (struct file_system_type*,int ,int ,struct btrfs_fs_info*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int btrfs_get_sb(struct file_system_type *fs_type, int flags,
  const char *device_name, void *data, struct vfsmount *mnt)
{
 struct block_device *bdev = ((void*)0);
 struct super_block *s;
 struct dentry *root;
 struct btrfs_fs_devices *fs_devices = ((void*)0);
 struct btrfs_fs_info *fs_info = ((void*)0);
 fmode_t mode = FMODE_READ;
 char *subvol_name = ((void*)0);
 u64 subvol_objectid = 0;
 u64 subvol_rootid = 0;
 int error = 0;

 if (!(flags & MS_RDONLY))
  mode |= FMODE_WRITE;

 error = btrfs_parse_early_options(data, mode, fs_type,
       &subvol_name, &subvol_objectid,
       &subvol_rootid, &fs_devices);
 if (error) {
  kfree(subvol_name);
  return error;
 }

 if (subvol_name) {
  root = mount_subvol(subvol_name, flags, device_name, data);
  kfree(subvol_name);
  mnt->mnt_sb = root->d_sb;
  mnt->mnt_root = root;
  return 0;
 }

 error = btrfs_scan_one_device(device_name, mode, fs_type, &fs_devices);
 if (error)
  return error;







 fs_info = kzalloc(sizeof(struct btrfs_fs_info), GFP_NOFS);
 if (!fs_info)
  return -ENOMEM;

 fs_info->fs_devices = fs_devices;

 fs_info->super_copy = kzalloc(BTRFS_SUPER_INFO_SIZE, GFP_NOFS);
 fs_info->super_for_commit = kzalloc(BTRFS_SUPER_INFO_SIZE, GFP_NOFS);
 if (!fs_info->super_copy || !fs_info->super_for_commit) {
  error = -ENOMEM;
  goto error_fs_info;
 }

 error = btrfs_open_devices(fs_devices, mode, fs_type);
 if (error)
  goto error_fs_info;

 if (!(flags & MS_RDONLY) && fs_devices->rw_devices == 0) {
  error = -EACCES;
  goto error_close_devices;
 }

 bdev = fs_devices->latest_bdev;
 s = sget(fs_type, btrfs_test_super, btrfs_set_super, fs_info);
 if (IS_ERR(s)) {
  error = PTR_ERR(s);
  goto error_close_devices;
 }

 if (s->s_root) {
  btrfs_close_devices(fs_devices);
  free_fs_info(fs_info);
  if ((flags ^ s->s_flags) & MS_RDONLY)
   error = -EBUSY;
 } else {
  char b[BDEVNAME_SIZE];

  s->s_flags = flags;
  strlcpy(s->s_id, bdevname(bdev, b), sizeof(s->s_id));
  btrfs_sb(s)->bdev_holder = fs_type;
  error = btrfs_fill_super(s, fs_devices, data,
      flags & MS_SILENT ? 1 : 0);
 }

 root = !error ? get_default_root(s, subvol_objectid) : ERR_PTR(error);
 if (IS_ERR(root))
  deactivate_locked_super(s);

 mnt->mnt_sb = s;
 mnt->mnt_root = root;

 return 0;

error_close_devices:
 btrfs_close_devices(fs_devices);
error_fs_info:
 free_fs_info(fs_info);
 return error;
}
