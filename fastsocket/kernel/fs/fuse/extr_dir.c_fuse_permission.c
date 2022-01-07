
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct fuse_conn {int flags; } ;


 int EACCES ;
 int FUSE_DEFAULT_PERMISSIONS ;
 int MAY_ACCESS ;
 int MAY_EXEC ;
 scalar_t__ S_ISREG (int) ;
 int S_IXUGO ;
 int fuse_access (struct inode*,int) ;
 int fuse_allow_current_process (struct fuse_conn*) ;
 int fuse_do_getattr (struct inode*,int *,int *) ;
 int fuse_update_attributes (struct inode*,int *,int *,int*) ;
 int generic_permission (struct inode*,int,int *) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;

__attribute__((used)) static int fuse_permission(struct inode *inode, int mask)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 bool refreshed = 0;
 int err = 0;

 if (!fuse_allow_current_process(fc))
  return -EACCES;




 if ((fc->flags & FUSE_DEFAULT_PERMISSIONS) ||
     ((mask & MAY_EXEC) && S_ISREG(inode->i_mode))) {
  err = fuse_update_attributes(inode, ((void*)0), ((void*)0), &refreshed);
  if (err)
   return err;
 }

 if (fc->flags & FUSE_DEFAULT_PERMISSIONS) {
  err = generic_permission(inode, mask, ((void*)0));




  if (err == -EACCES && !refreshed) {
   err = fuse_do_getattr(inode, ((void*)0), ((void*)0));
   if (!err)
    err = generic_permission(inode, mask, ((void*)0));
  }





 } else if (mask & MAY_ACCESS) {
  err = fuse_access(inode, mask);
 } else if ((mask & MAY_EXEC) && S_ISREG(inode->i_mode)) {
  if (!(inode->i_mode & S_IXUGO)) {
   if (refreshed)
    return -EACCES;

   err = fuse_do_getattr(inode, ((void*)0), ((void*)0));
   if (!err && !(inode->i_mode & S_IXUGO))
    return -EACCES;
  }
 }
 return err;
}
