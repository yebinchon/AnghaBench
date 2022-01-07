
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_fid {int fid; } ;
struct inode {int i_ino; } ;
struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_VFS ;
 int P9_DMLINK ;
 int P9_DPRINTK (int ,char*,int ,int ,int ) ;
 int PTR_ERR (struct p9_fid*) ;
 char* __getname () ;
 int __putname (char*) ;
 int p9_client_clunk (struct p9_fid*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ unlikely (int) ;
 struct p9_fid* v9fs_fid_clone (struct dentry*) ;
 int v9fs_vfs_mkspecial (struct inode*,struct dentry*,int ,char*) ;

__attribute__((used)) static int
v9fs_vfs_link(struct dentry *old_dentry, struct inode *dir,
       struct dentry *dentry)
{
 int retval;
 struct p9_fid *oldfid;
 char *name;

 P9_DPRINTK(P9_DEBUG_VFS,
  " %lu,%s,%s\n", dir->i_ino, dentry->d_name.name,
  old_dentry->d_name.name);

 oldfid = v9fs_fid_clone(old_dentry);
 if (IS_ERR(oldfid))
  return PTR_ERR(oldfid);

 name = __getname();
 if (unlikely(!name)) {
  retval = -ENOMEM;
  goto clunk_fid;
 }

 sprintf(name, "%d\n", oldfid->fid);
 retval = v9fs_vfs_mkspecial(dir, dentry, P9_DMLINK, name);
 __putname(name);

clunk_fid:
 p9_client_clunk(oldfid);
 return retval;
}
