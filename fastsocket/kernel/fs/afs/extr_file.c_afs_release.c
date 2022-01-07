
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int private_data; } ;
struct TYPE_2__ {int vnode; int vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 int _enter (char*,int ,int ) ;
 int _leave (char*) ;
 int key_put (int ) ;

int afs_release(struct inode *inode, struct file *file)
{
 struct afs_vnode *vnode = AFS_FS_I(inode);

 _enter("{%x:%u},", vnode->fid.vid, vnode->fid.vnode);

 key_put(file->private_data);
 _leave(" = 0");
 return 0;
}
