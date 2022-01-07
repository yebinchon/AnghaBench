
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_generation; int i_sb; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef int namebuf ;
struct TYPE_4__ {int k_objectid; } ;
struct TYPE_3__ {int i_mutex; } ;


 int ENODATA ;
 struct dentry* ERR_PTR (int) ;
 TYPE_2__* INODE_PKEY (struct inode const*) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_XATTR ;
 int dput (struct dentry*) ;
 int le32_to_cpu (int ) ;
 struct dentry* lookup_one_len (char*,struct dentry*,int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 struct dentry* open_xa_root (int ,int) ;
 int snprintf (char*,int,char*,int,int) ;
 int strlen (char*) ;
 scalar_t__ xattr_may_create (int) ;
 int xattr_mkdir (TYPE_1__*,struct dentry*,int) ;

__attribute__((used)) static struct dentry *open_xa_dir(const struct inode *inode, int flags)
{
 struct dentry *xaroot, *xadir;
 char namebuf[17];

 xaroot = open_xa_root(inode->i_sb, flags);
 if (IS_ERR(xaroot))
  return xaroot;

 snprintf(namebuf, sizeof(namebuf), "%X.%X",
   le32_to_cpu(INODE_PKEY(inode)->k_objectid),
   inode->i_generation);

 mutex_lock_nested(&xaroot->d_inode->i_mutex, I_MUTEX_XATTR);

 xadir = lookup_one_len(namebuf, xaroot, strlen(namebuf));
 if (!IS_ERR(xadir) && !xadir->d_inode) {
  int err = -ENODATA;
  if (xattr_may_create(flags))
   err = xattr_mkdir(xaroot->d_inode, xadir, 0700);
  if (err) {
   dput(xadir);
   xadir = ERR_PTR(err);
  }
 }

 mutex_unlock(&xaroot->d_inode->i_mutex);
 dput(xaroot);
 return xadir;
}
