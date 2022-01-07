
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_mode; int i_gid; int i_uid; } ;


 int S_IFREG ;
 int devgid ;
 int devmode ;
 int devuid ;

__attribute__((used)) static void update_dev(struct dentry *dev)
{
 dev->d_inode->i_uid = devuid;
 dev->d_inode->i_gid = devgid;
 dev->d_inode->i_mode = S_IFREG | devmode;
}
