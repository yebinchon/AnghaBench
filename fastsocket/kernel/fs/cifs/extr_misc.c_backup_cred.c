
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_sb_info {int mnt_cifs_flags; scalar_t__ mnt_backupuid; int mnt_backupgid; } ;


 int CIFS_MOUNT_CIFS_BACKUPGID ;
 int CIFS_MOUNT_CIFS_BACKUPUID ;
 scalar_t__ current_fsuid () ;
 scalar_t__ in_group_p (int ) ;

bool
backup_cred(struct cifs_sb_info *cifs_sb)
{
 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_BACKUPUID) {
  if (cifs_sb->mnt_backupuid == current_fsuid())
   return 1;
 }
 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_BACKUPGID) {
  if (in_group_p(cifs_sb->mnt_backupgid))
   return 1;
 }

 return 0;
}
