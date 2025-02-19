
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
struct TYPE_5__ {int cell; } ;


 scalar_t__ AFSNAMEMAX ;
 scalar_t__ AFSPATHMAX ;
 struct afs_vnode* AFS_FS_I (struct key*) ;
 int EINVAL ;
 int ENAMETOOLONG ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 int _debug (char*) ;
 int _enter (char*,int ,int ,int ,char const*) ;
 int _leave (char*,...) ;
 struct key* afs_iget (int ,struct key*,struct afs_fid*,struct afs_file_status*,int *) ;
 int afs_put_server (struct afs_server*) ;
 struct key* afs_request_key (int ) ;
 int afs_vnode_finalise_status_update (struct afs_vnode*,struct afs_server*) ;
 int afs_vnode_symlink (struct afs_vnode*,struct key*,int ,char const*,struct afs_fid*,struct afs_file_status*,struct afs_server**) ;
 int d_drop (struct dentry*) ;
 int d_instantiate (struct dentry*,struct key*) ;
 int d_rehash (struct dentry*) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int key_put (struct key*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int afs_symlink(struct inode *dir, struct dentry *dentry,
         const char *content)
{
 struct afs_file_status status;
 struct afs_server *server;
 struct afs_vnode *dvnode, *vnode;
 struct afs_fid fid;
 struct inode *inode;
 struct key *key;
 int ret;

 dvnode = AFS_FS_I(dir);

 _enter("{%x:%u},{%s},%s",
        dvnode->fid.vid, dvnode->fid.vnode, dentry->d_name.name,
        content);

 ret = -ENAMETOOLONG;
 if (dentry->d_name.len >= AFSNAMEMAX)
  goto error;

 ret = -EINVAL;
 if (strlen(content) >= AFSPATHMAX)
  goto error;

 key = afs_request_key(dvnode->volume->cell);
 if (IS_ERR(key)) {
  ret = PTR_ERR(key);
  goto error;
 }

 ret = afs_vnode_symlink(dvnode, key, dentry->d_name.name, content,
    &fid, &status, &server);
 if (ret < 0)
  goto create_error;

 inode = afs_iget(dir->i_sb, key, &fid, &status, ((void*)0));
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
create_error:
 key_put(key);
error:
 d_drop(dentry);
 _leave(" = %d", ret);
 return ret;
}
