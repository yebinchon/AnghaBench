
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v9fs_session_info {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*,int ) ;
 int P9_OREAD ;
 int PTR_ERR (struct p9_fid*) ;
 int S_IFDIR ;
 int p9_client_clunk (struct p9_fid*) ;
 int unixmode2p9mode (struct v9fs_session_info*,int) ;
 struct p9_fid* v9fs_create (struct v9fs_session_info*,struct inode*,struct dentry*,int *,int ,int ) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;

__attribute__((used)) static int v9fs_vfs_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 int err;
 u32 perm;
 struct v9fs_session_info *v9ses;
 struct p9_fid *fid;

 P9_DPRINTK(P9_DEBUG_VFS, "name %s\n", dentry->d_name.name);
 err = 0;
 v9ses = v9fs_inode2v9ses(dir);
 perm = unixmode2p9mode(v9ses, mode | S_IFDIR);
 fid = v9fs_create(v9ses, dir, dentry, ((void*)0), perm, P9_OREAD);
 if (IS_ERR(fid)) {
  err = PTR_ERR(fid);
  fid = ((void*)0);
 }

 if (fid)
  p9_client_clunk(fid);

 return err;
}
