
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_sb_info {int dummy; } ;
struct inode {int i_ino; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {scalar_t__ oldmtime; } ;


 int DEBUG1 (char*) ;
 TYPE_1__* SMB_I (struct inode*) ;
 scalar_t__ SMB_MAX_AGE (struct smb_sb_info*) ;
 int VERBOSE (char*,int ,int ,scalar_t__) ;
 int jiffies ;
 int lock_kernel () ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 int smb_refresh_inode (struct dentry*) ;
 scalar_t__ time_before (int ,scalar_t__) ;
 int unlock_kernel () ;

int
smb_revalidate_inode(struct dentry *dentry)
{
 struct smb_sb_info *s = server_from_dentry(dentry);
 struct inode *inode = dentry->d_inode;
 int error = 0;

 DEBUG1("smb_revalidate_inode\n");
 lock_kernel();




 if (time_before(jiffies, SMB_I(inode)->oldmtime + SMB_MAX_AGE(s))) {
  VERBOSE("up-to-date, ino=%ld, jiffies=%lu, oldtime=%lu\n",
   inode->i_ino, jiffies, SMB_I(inode)->oldmtime);
  goto out;
 }

 error = smb_refresh_inode(dentry);
out:
 unlock_kernel();
 return error;
}
