
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct key {int i_sb; } ;
struct inode {int i_sb; } ;
struct TYPE_6__ {scalar_t__ len; int name; } ;
struct dentry {TYPE_3__ d_name; } ;
struct TYPE_4__ {int vnode; int vid; } ;
struct afs_vnode {int lock; int update_cnt; TYPE_2__* volume; TYPE_1__ fid; } ;
struct afs_server {int dummy; } ;
struct afs_file_status {int dummy; } ;
struct afs_fid {int dummy; } ;
struct afs_callback {int dummy; } ;
struct TYPE_5__ {int cell; } ;


 scalar_t__ AFSNAMEMAX ;
 struct afs_vnode* AFS_FS_I (struct key*) ;
 int ENAMETOOLONG ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 int S_IFDIR ;
 int _debug (char*) ;
 int _enter (char*,int ,int ,int ,int) ;
 int _leave (char*,...) ;
 struct key* afs_iget (int ,struct key*,struct afs_fid*,struct afs_file_status*,struct afs_callback*) ;
 int afs_put_server (struct afs_server*) ;
 struct key* afs_request_key (int ) ;
 int afs_vnode_create (struct afs_vnode*,struct key*,int ,int,struct afs_fid*,struct afs_file_status*,struct afs_callback*,struct afs_server**) ;
 int afs_vnode_finalise_status_update (struct afs_vnode*,struct afs_server*) ;
 int d_drop (struct dentry*) ;
 int d_instantiate (struct dentry*,struct key*) ;
 int d_rehash (struct dentry*) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int key_put (struct key*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int afs_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 struct afs_file_status status;
 struct afs_callback cb;
 struct afs_server *server;
 struct afs_vnode *dvnode, *vnode;
 struct afs_fid fid;
 struct inode *inode;
 struct key *key;
 int ret;

 dvnode = AFS_FS_I(dir);

 _enter("{%x:%u},{%s},%o",
        dvnode->fid.vid, dvnode->fid.vnode, dentry->d_name.name, mode);

 ret = -ENAMETOOLONG;
 if (dentry->d_name.len >= AFSNAMEMAX)
  goto error;

 key = afs_request_key(dvnode->volume->cell);
 if (IS_ERR(key)) {
  ret = PTR_ERR(key);
  goto error;
 }

 mode |= S_IFDIR;
 ret = afs_vnode_create(dvnode, key, dentry->d_name.name,
          mode, &fid, &status, &cb, &server);
 if (ret < 0)
  goto mkdir_error;

 inode = afs_iget(dir->i_sb, key, &fid, &status, &cb);
 if (IS_ERR(inode)) {


  ret = PTR_ERR(inode);
  goto iget_error;
 }


 vnode = AFS_FS_I(inode);
 spin_lock(&vnode->lock);
 vnode->update_cnt++;
 spin_unlock(&vnode->lock);
 afs_vnode_finalise_status_update(vnode, server);
 afs_put_server(server);

 d_instantiate(dentry, inode);
 if (d_unhashed(dentry)) {
  _debug("not hashed");
  d_rehash(dentry);
 }
 key_put(key);
 _leave(" = 0");
 return 0;

iget_error:
 afs_put_server(server);
mkdir_error:
 key_put(key);
error:
 d_drop(dentry);
 _leave(" = %d", ret);
 return ret;
}
