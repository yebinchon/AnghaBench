
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct key {int dummy; } ;
struct iattr {int ia_valid; TYPE_4__* ia_file; } ;
struct TYPE_7__ {int name; } ;
struct dentry {TYPE_2__ d_name; int d_inode; } ;
struct TYPE_8__ {int i_mapping; int i_mode; } ;
struct TYPE_6__ {int vnode; int vid; } ;
struct afs_vnode {TYPE_5__* volume; TYPE_3__ vfs_inode; TYPE_1__ fid; } ;
struct TYPE_10__ {int cell; } ;
struct TYPE_9__ {struct key* private_data; } ;


 struct afs_vnode* AFS_FS_I (int ) ;
 int ATTR_FILE ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 scalar_t__ S_ISREG (int ) ;
 int _enter (char*,int ,int ,int ,int) ;
 int _leave (char*,...) ;
 struct key* afs_request_key (int ) ;
 int afs_vnode_setattr (struct afs_vnode*,struct key*,struct iattr*) ;
 int afs_writeback_all (struct afs_vnode*) ;
 int filemap_write_and_wait (int ) ;
 int key_put (struct key*) ;

int afs_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct afs_vnode *vnode = AFS_FS_I(dentry->d_inode);
 struct key *key;
 int ret;

 _enter("{%x:%u},{n=%s},%x",
        vnode->fid.vid, vnode->fid.vnode, dentry->d_name.name,
        attr->ia_valid);

 if (!(attr->ia_valid & (ATTR_SIZE | ATTR_MODE | ATTR_UID | ATTR_GID |
    ATTR_MTIME))) {
  _leave(" = 0 [unsupported]");
  return 0;
 }


 if (S_ISREG(vnode->vfs_inode.i_mode)) {
  filemap_write_and_wait(vnode->vfs_inode.i_mapping);
  afs_writeback_all(vnode);
 }

 if (attr->ia_valid & ATTR_FILE) {
  key = attr->ia_file->private_data;
 } else {
  key = afs_request_key(vnode->volume->cell);
  if (IS_ERR(key)) {
   ret = PTR_ERR(key);
   goto error;
  }
 }

 ret = afs_vnode_setattr(vnode, key, attr);
 if (!(attr->ia_valid & ATTR_FILE))
  key_put(key);

error:
 _leave(" = %d", ret);
 return ret;
}
