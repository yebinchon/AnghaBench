
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_commit_info {int dummy; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;



__attribute__((used)) static inline void
pnfs_recover_commit_reqs(struct inode *inode, struct list_head *list,
    struct nfs_commit_info *cinfo)
{
}
