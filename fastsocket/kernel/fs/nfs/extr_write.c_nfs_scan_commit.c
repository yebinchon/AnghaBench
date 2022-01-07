
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_commit_info {int dummy; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;



int nfs_scan_commit(struct inode *inode, struct list_head *dst,
      struct nfs_commit_info *cinfo)
{
 return 0;
}
