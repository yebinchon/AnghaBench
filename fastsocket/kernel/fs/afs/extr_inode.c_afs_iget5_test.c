
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; scalar_t__ i_version; } ;
struct TYPE_2__ {scalar_t__ vnode; scalar_t__ unique; } ;
struct afs_iget_data {TYPE_1__ fid; } ;



__attribute__((used)) static int afs_iget5_test(struct inode *inode, void *opaque)
{
 struct afs_iget_data *data = opaque;

 return inode->i_ino == data->fid.vnode &&
  inode->i_version == data->fid.unique;
}
