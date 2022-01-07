
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {scalar_t__ d_inode; } ;


 int DENTRY_PATH (struct dentry*) ;
 int PARANOIA (char*,int ) ;
 scalar_t__ is_bad_inode (scalar_t__) ;

__attribute__((used)) static int
smb_delete_dentry(struct dentry * dentry)
{
 if (dentry->d_inode) {
  if (is_bad_inode(dentry->d_inode)) {
   PARANOIA("bad inode, unhashing %s/%s\n",
     DENTRY_PATH(dentry));
   return 1;
  }
 } else {

 }
 return 0;
}
