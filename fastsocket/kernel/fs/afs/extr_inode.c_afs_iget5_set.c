
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_version; int i_ino; } ;
struct TYPE_2__ {int unique; int vnode; } ;
struct afs_vnode {int volume; TYPE_1__ fid; } ;
struct afs_iget_data {int volume; TYPE_1__ fid; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;

__attribute__((used)) static int afs_iget5_set(struct inode *inode, void *opaque)
{
 struct afs_iget_data *data = opaque;
 struct afs_vnode *vnode = AFS_FS_I(inode);

 inode->i_ino = data->fid.vnode;
 inode->i_version = data->fid.unique;
 vnode->fid = data->fid;
 vnode->volume = data->volume;

 return 0;
}
