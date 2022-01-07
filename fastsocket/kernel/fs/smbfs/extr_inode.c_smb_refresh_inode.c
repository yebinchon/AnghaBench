
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_fattr {int f_mode; } ;
struct inode {int i_ino; int i_mode; } ;
struct dentry {struct inode* d_inode; } ;


 int DENTRY_PATH (struct dentry*) ;
 int EIO ;
 int PARANOIA (char*,int ,int,int) ;
 int S_IFMT ;
 int S_ISDIR (int) ;
 scalar_t__ S_ISLNK (int) ;
 int invalidate_remote_inode (struct inode*) ;
 int make_bad_inode (struct inode*) ;
 int smb_invalid_dir_cache (struct inode*) ;
 int smb_proc_getattr (struct dentry*,struct smb_fattr*) ;
 int smb_renew_times (struct dentry*) ;
 int smb_set_inode_attr (struct inode*,struct smb_fattr*) ;

__attribute__((used)) static int
smb_refresh_inode(struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;
 int error;
 struct smb_fattr fattr;

 error = smb_proc_getattr(dentry, &fattr);
 if (!error) {
  smb_renew_times(dentry);






  if (inode->i_ino == 2)
   return error;
  if (S_ISLNK(inode->i_mode))
   return error;

  if ((inode->i_mode & S_IFMT) == (fattr.f_mode & S_IFMT)) {
   smb_set_inode_attr(inode, &fattr);
  } else {







   PARANOIA("%s/%s changed mode, %07o to %07o\n",
     DENTRY_PATH(dentry),
     inode->i_mode, fattr.f_mode);

   fattr.f_mode = inode->i_mode;
   make_bad_inode(inode);
   inode->i_mode = fattr.f_mode;





   if (!S_ISDIR(inode->i_mode))
    invalidate_remote_inode(inode);
   else
    smb_invalid_dir_cache(inode);
   error = -EIO;
  }
 }
 return error;
}
