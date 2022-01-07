
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_sb_info {TYPE_1__* mnt; } ;
struct dentry {int d_time; int * d_op; } ;
struct TYPE_2__ {int flags; } ;


 int SMB_MOUNT_CASE ;
 int jiffies ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 int smbfs_dentry_operations ;
 int smbfs_dentry_operations_case ;

void
smb_new_dentry(struct dentry *dentry)
{
 struct smb_sb_info *server = server_from_dentry(dentry);

 if (server->mnt->flags & SMB_MOUNT_CASE)
  dentry->d_op = &smbfs_dentry_operations_case;
 else
  dentry->d_op = &smbfs_dentry_operations;
 dentry->d_time = jiffies;
}
