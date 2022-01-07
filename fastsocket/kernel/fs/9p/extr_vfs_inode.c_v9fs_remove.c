
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*,struct inode*,struct dentry*,int) ;
 int PTR_ERR (struct p9_fid*) ;
 int p9_client_remove (struct p9_fid*) ;
 struct p9_fid* v9fs_fid_clone (struct dentry*) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;

__attribute__((used)) static int v9fs_remove(struct inode *dir, struct dentry *file, int rmdir)
{
 struct inode *file_inode;
 struct v9fs_session_info *v9ses;
 struct p9_fid *v9fid;

 P9_DPRINTK(P9_DEBUG_VFS, "inode: %p dentry: %p rmdir: %d\n", dir, file,
  rmdir);

 file_inode = file->d_inode;
 v9ses = v9fs_inode2v9ses(file_inode);
 v9fid = v9fs_fid_clone(file);
 if (IS_ERR(v9fid))
  return PTR_ERR(v9fid);

 return p9_client_remove(v9fid);
}
