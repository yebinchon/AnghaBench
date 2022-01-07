
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct v9fs_session_info {int qid; struct dentry* s_root; } ;
struct super_block {int qid; struct dentry* s_root; } ;
struct p9_wstat {int qid; struct dentry* s_root; } ;
struct p9_fid {int qid; struct dentry* s_root; } ;
struct inode {int qid; struct dentry* s_root; } ;
struct file_system_type {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_ino; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct v9fs_session_info*) ;
 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*) ;
 int PTR_ERR (struct v9fs_session_info*) ;
 int S_IFDIR ;
 int S_IRWXUGO ;
 int S_ISVTX ;
 struct dentry* d_alloc_root (struct v9fs_session_info*) ;
 int deactivate_locked_super (struct v9fs_session_info*) ;
 int iput (struct v9fs_session_info*) ;
 int kfree (struct v9fs_session_info*) ;
 struct v9fs_session_info* kzalloc (int,int ) ;
 int p9_client_clunk (struct v9fs_session_info*) ;
 struct v9fs_session_info* p9_client_stat (struct v9fs_session_info*) ;
 int p9stat_free (struct v9fs_session_info*) ;
 struct v9fs_session_info* sget (struct file_system_type*,int *,int ,struct v9fs_session_info*) ;
 int simple_set_mnt (struct vfsmount*,struct v9fs_session_info*) ;
 int v9fs_fid_add (struct dentry*,struct v9fs_session_info*) ;
 int v9fs_fill_super (struct v9fs_session_info*,struct v9fs_session_info*,int,void*) ;
 struct v9fs_session_info* v9fs_get_inode (struct v9fs_session_info*,int) ;
 int v9fs_qid2ino (int *) ;
 int v9fs_session_close (struct v9fs_session_info*) ;
 struct v9fs_session_info* v9fs_session_init (struct v9fs_session_info*,char const*,void*) ;
 int v9fs_set_super ;
 int v9fs_stat2inode (struct v9fs_session_info*,TYPE_1__*,struct v9fs_session_info*) ;

__attribute__((used)) static int v9fs_get_sb(struct file_system_type *fs_type, int flags,
         const char *dev_name, void *data,
         struct vfsmount *mnt)
{
 struct super_block *sb = ((void*)0);
 struct inode *inode = ((void*)0);
 struct dentry *root = ((void*)0);
 struct v9fs_session_info *v9ses = ((void*)0);
 struct p9_wstat *st = ((void*)0);
 int mode = S_IRWXUGO | S_ISVTX;
 struct p9_fid *fid;
 int retval = 0;

 P9_DPRINTK(P9_DEBUG_VFS, " \n");

 v9ses = kzalloc(sizeof(struct v9fs_session_info), GFP_KERNEL);
 if (!v9ses)
  return -ENOMEM;

 fid = v9fs_session_init(v9ses, dev_name, data);
 if (IS_ERR(fid)) {
  retval = PTR_ERR(fid);
  goto close_session;
 }

 st = p9_client_stat(fid);
 if (IS_ERR(st)) {
  retval = PTR_ERR(st);
  goto clunk_fid;
 }

 sb = sget(fs_type, ((void*)0), v9fs_set_super, v9ses);
 if (IS_ERR(sb)) {
  retval = PTR_ERR(sb);
  goto free_stat;
 }
 v9fs_fill_super(sb, v9ses, flags, data);

 inode = v9fs_get_inode(sb, S_IFDIR | mode);
 if (IS_ERR(inode)) {
  retval = PTR_ERR(inode);
  goto release_sb;
 }

 root = d_alloc_root(inode);
 if (!root) {
  iput(inode);
  retval = -ENOMEM;
  goto release_sb;
 }

 sb->s_root = root;
 root->d_inode->i_ino = v9fs_qid2ino(&st->qid);

 v9fs_stat2inode(st, root->d_inode, sb);

 v9fs_fid_add(root, fid);
 p9stat_free(st);
 kfree(st);

P9_DPRINTK(P9_DEBUG_VFS, " simple set mount, return 0\n");
 simple_set_mnt(mnt, sb);
 return 0;

free_stat:
 p9stat_free(st);
 kfree(st);

clunk_fid:
 p9_client_clunk(fid);

close_session:
 v9fs_session_close(v9ses);
 kfree(v9ses);
 return retval;

release_sb:
 p9stat_free(st);
 kfree(st);
 deactivate_locked_super(sb);
 return retval;
}
