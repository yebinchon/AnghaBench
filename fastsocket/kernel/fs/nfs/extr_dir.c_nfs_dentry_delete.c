
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
struct dentry {int d_flags; TYPE_4__* d_sb; int * d_inode; TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_8__ {int s_flags; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {TYPE_1__ d_name; } ;


 int DCACHE_NFSFS_RENAMED ;
 int MS_ACTIVE ;
 scalar_t__ NFS_STALE (int *) ;
 int VFS ;
 int dfprintk (int ,char*,int ,int ,int) ;

__attribute__((used)) static int nfs_dentry_delete(struct dentry *dentry)
{
 dfprintk(VFS, "NFS: dentry_delete(%s/%s, %x)\n",
  dentry->d_parent->d_name.name, dentry->d_name.name,
  dentry->d_flags);


 if (dentry->d_inode != ((void*)0) && NFS_STALE(dentry->d_inode))
  return 1;

 if (dentry->d_flags & DCACHE_NFSFS_RENAMED) {

  return 1;
 }
 if (!(dentry->d_sb->s_flags & MS_ACTIVE)) {


  return 1;
 }
 return 0;

}
