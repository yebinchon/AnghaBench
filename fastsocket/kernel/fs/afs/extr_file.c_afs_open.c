
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct key {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct key* private_data; } ;
struct TYPE_3__ {int vnode; int vid; } ;
struct afs_vnode {TYPE_2__* volume; TYPE_1__ fid; } ;
struct TYPE_4__ {int cell; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 int _enter (char*,int ,int ) ;
 int _leave (char*,...) ;
 struct key* afs_request_key (int ) ;
 int afs_validate (struct afs_vnode*,struct key*) ;

int afs_open(struct inode *inode, struct file *file)
{
 struct afs_vnode *vnode = AFS_FS_I(inode);
 struct key *key;
 int ret;

 _enter("{%x:%u},", vnode->fid.vid, vnode->fid.vnode);

 key = afs_request_key(vnode->volume->cell);
 if (IS_ERR(key)) {
  _leave(" = %ld [key]", PTR_ERR(key));
  return PTR_ERR(key);
 }

 ret = afs_validate(vnode, key);
 if (ret < 0) {
  _leave(" = %d [val]", ret);
  return ret;
 }

 file->private_data = key;
 _leave(" = 0");
 return 0;
}
