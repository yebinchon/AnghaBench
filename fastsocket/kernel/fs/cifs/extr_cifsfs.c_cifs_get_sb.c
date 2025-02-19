
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct super_block {int s_flags; int local_nls; } ;
struct smb_vol {int s_flags; int local_nls; } ;
struct file_system_type {int dummy; } ;
struct cifs_sb_info {struct cifs_sb_info* mountdata; } ;
struct cifs_mnt_data {int flags; struct cifs_sb_info* cifs_sb; struct super_block* vol; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct super_block*) ;
 int MS_ACTIVE ;
 int MS_NOATIME ;
 int MS_NODIRATIME ;
 int MS_SILENT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct super_block*) ;
 int cERROR (int,char*,int) ;
 int cFYI (int,char*,char const*,int) ;
 int cifs_cleanup_volume_info (struct super_block*) ;
 struct super_block* cifs_get_volume_info (char*,char const*) ;
 int cifs_mount (struct cifs_sb_info*,struct super_block*) ;
 int cifs_read_super (struct super_block*) ;
 int cifs_set_super ;
 int cifs_setup_cifs_sb (struct super_block*,struct cifs_sb_info*) ;
 int cifs_umount (struct cifs_sb_info*) ;
 int deactivate_locked_super (struct super_block*) ;
 int kfree (struct cifs_sb_info*) ;
 struct cifs_sb_info* kstrndup (void*,int ,int ) ;
 struct cifs_sb_info* kzalloc (int,int ) ;
 struct super_block* sget (struct file_system_type*,int *,int ,struct cifs_mnt_data*) ;
 int simple_set_mnt (struct vfsmount*,struct super_block*) ;
 int unload_nls (int ) ;

__attribute__((used)) static int
cifs_get_sb(struct file_system_type *fs_type,
     int flags, const char *dev_name, void *data, struct vfsmount *mnt)
{
 int rc = 0;
 struct super_block *sb;
 struct cifs_sb_info *cifs_sb;
 struct smb_vol *volume_info;
 struct cifs_mnt_data mnt_data;

 cFYI(1, "Devname: %s flags: %d ", dev_name, flags);

 volume_info = cifs_get_volume_info((char *)data, dev_name);
 if (IS_ERR(volume_info))
  return PTR_ERR(volume_info);

 cifs_sb = kzalloc(sizeof(struct cifs_sb_info), GFP_KERNEL);
 if (cifs_sb == ((void*)0)) {
  rc = -ENOMEM;
  goto out_nls;
 }






 cifs_sb->mountdata = kstrndup(data, PAGE_SIZE, GFP_KERNEL);
 if (cifs_sb->mountdata == ((void*)0)) {
  rc = -ENOMEM;
  goto out_cifs_sb;
 }

 cifs_setup_cifs_sb(volume_info, cifs_sb);

 rc = cifs_mount(cifs_sb, volume_info);
 if (rc) {
  if (!(flags & MS_SILENT))
   cERROR(1, "cifs_mount failed w/return code = %d", rc);
  goto out_mountdata;
 }

 mnt_data.vol = volume_info;
 mnt_data.cifs_sb = cifs_sb;
 mnt_data.flags = flags;

 sb = sget(fs_type, ((void*)0), cifs_set_super, &mnt_data);
 if (IS_ERR(sb)) {
  rc = PTR_ERR(sb);
  cifs_umount(cifs_sb);
  goto out;
 }

 sb->s_flags = flags;

 sb->s_flags |= MS_NODIRATIME | MS_NOATIME;

 rc = cifs_read_super(sb);
 if (rc)
  goto out_super;

 sb->s_flags |= MS_ACTIVE;

 simple_set_mnt(mnt, sb);
 goto out;

out_super:
 deactivate_locked_super(sb);
out:
 cifs_cleanup_volume_info(volume_info);
 return rc;
out_mountdata:
 kfree(cifs_sb->mountdata);
out_cifs_sb:
 kfree(cifs_sb);
out_nls:
 unload_nls(volume_info->local_nls);
 goto out;
}
