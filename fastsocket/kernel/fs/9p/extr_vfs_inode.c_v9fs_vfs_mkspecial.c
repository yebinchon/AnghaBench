
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v9fs_session_info {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EPERM ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_ERROR ;
 int P9_DPRINTK (int ,char*) ;
 int P9_OREAD ;
 int PTR_ERR (struct p9_fid*) ;
 int p9_client_clunk (struct p9_fid*) ;
 int unixmode2p9mode (struct v9fs_session_info*,int) ;
 struct p9_fid* v9fs_create (struct v9fs_session_info*,struct inode*,struct dentry*,char*,int ,int ) ;
 int v9fs_extended (struct v9fs_session_info*) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;

__attribute__((used)) static int v9fs_vfs_mkspecial(struct inode *dir, struct dentry *dentry,
 int mode, const char *extension)
{
 u32 perm;
 struct v9fs_session_info *v9ses;
 struct p9_fid *fid;

 v9ses = v9fs_inode2v9ses(dir);
 if (!v9fs_extended(v9ses)) {
  P9_DPRINTK(P9_DEBUG_ERROR, "not extended\n");
  return -EPERM;
 }

 perm = unixmode2p9mode(v9ses, mode);
 fid = v9fs_create(v9ses, dir, dentry, (char *) extension, perm,
        P9_OREAD);
 if (IS_ERR(fid))
  return PTR_ERR(fid);

 p9_client_clunk(fid);
 return 0;
}
