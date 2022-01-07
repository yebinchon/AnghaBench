
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {unsigned long d_time; struct inode* d_inode; } ;


 int DENTRY_PATH (struct dentry*) ;
 int PARANOIA (char*,int ) ;
 unsigned long SMB_MAX_AGE (struct smb_sb_info*) ;
 int VERBOSE (char*,int ,unsigned long) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 unsigned long jiffies ;
 int lock_kernel () ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 scalar_t__ smb_revalidate_inode (struct dentry*) ;
 int unlock_kernel () ;

__attribute__((used)) static int
smb_lookup_validate(struct dentry * dentry, struct nameidata *nd)
{
 struct smb_sb_info *server = server_from_dentry(dentry);
 struct inode * inode = dentry->d_inode;
 unsigned long age = jiffies - dentry->d_time;
 int valid;






 valid = (age <= SMB_MAX_AGE(server));






 if (inode) {
  lock_kernel();
  if (is_bad_inode(inode)) {
   PARANOIA("%s/%s has dud inode\n", DENTRY_PATH(dentry));
   valid = 0;
  } else if (!valid)
   valid = (smb_revalidate_inode(dentry) == 0);
  unlock_kernel();
 } else {



 }
 return valid;
}
