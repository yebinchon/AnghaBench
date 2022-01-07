
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_entry {int fh; } ;
struct dentry {int * d_inode; } ;


 int NFS_FH (int *) ;
 scalar_t__ nfs_compare_fh (int ,int ) ;

__attribute__((used)) static
int nfs_same_file(struct dentry *dentry, struct nfs_entry *entry)
{
 if (dentry->d_inode == ((void*)0))
  goto different;
 if (nfs_compare_fh(entry->fh, NFS_FH(dentry->d_inode)) != 0)
  goto different;
 return 1;
different:
 return 0;
}
