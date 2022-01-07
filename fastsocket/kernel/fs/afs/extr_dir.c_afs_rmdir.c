
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct key {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {scalar_t__ len; int name; } ;
struct dentry {struct inode* d_inode; TYPE_3__ d_name; } ;
struct TYPE_4__ {int vnode; int vid; } ;
struct afs_vnode {int flags; int vfs_inode; TYPE_2__* volume; TYPE_1__ fid; } ;
struct TYPE_5__ {int cell; } ;


 scalar_t__ AFSNAMEMAX ;
 struct afs_vnode* AFS_FS_I (struct inode*) ;
 int AFS_VNODE_DELETED ;
 int ENAMETOOLONG ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 int _enter (char*,int ,int ,int ) ;
 int _leave (char*,...) ;
 int afs_discard_callback_on_delete (struct afs_vnode*) ;
 struct key* afs_request_key (int ) ;
 int afs_vnode_remove (struct afs_vnode*,struct key*,int ,int) ;
 int clear_nlink (int *) ;
 int key_put (struct key*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int afs_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct afs_vnode *dvnode, *vnode;
 struct key *key;
 int ret;

 dvnode = AFS_FS_I(dir);

 _enter("{%x:%u},{%s}",
        dvnode->fid.vid, dvnode->fid.vnode, dentry->d_name.name);

 ret = -ENAMETOOLONG;
 if (dentry->d_name.len >= AFSNAMEMAX)
  goto error;

 key = afs_request_key(dvnode->volume->cell);
 if (IS_ERR(key)) {
  ret = PTR_ERR(key);
  goto error;
 }

 ret = afs_vnode_remove(dvnode, key, dentry->d_name.name, 1);
 if (ret < 0)
  goto rmdir_error;

 if (dentry->d_inode) {
  vnode = AFS_FS_I(dentry->d_inode);
  clear_nlink(&vnode->vfs_inode);
  set_bit(AFS_VNODE_DELETED, &vnode->flags);
  afs_discard_callback_on_delete(vnode);
 }

 key_put(key);
 _leave(" = 0");
 return 0;

rmdir_error:
 key_put(key);
error:
 _leave(" = %d", ret);
 return ret;
}
