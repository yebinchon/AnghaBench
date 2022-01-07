
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct dentry {int d_flags; scalar_t__ d_inode; TYPE_1__ d_name; } ;
struct TYPE_4__ {int flags; } ;


 TYPE_2__* AFS_FS_I (scalar_t__) ;
 int AFS_VNODE_DELETED ;
 int DCACHE_NFSFS_RENAMED ;
 int _enter (char*,int ) ;
 int _leave (char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int afs_d_delete(struct dentry *dentry)
{
 _enter("%s", dentry->d_name.name);

 if (dentry->d_flags & DCACHE_NFSFS_RENAMED)
  goto zap;

 if (dentry->d_inode &&
     test_bit(AFS_VNODE_DELETED, &AFS_FS_I(dentry->d_inode)->flags))
   goto zap;

 _leave(" = 0 [keep]");
 return 0;

zap:
 _leave(" = 1 [zap]");
 return 1;
}
