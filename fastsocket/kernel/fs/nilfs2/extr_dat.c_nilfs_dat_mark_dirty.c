
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_req {int pr_entry_nr; } ;
struct inode {int dummy; } ;
typedef int __u64 ;


 int nilfs_dat_commit_entry (struct inode*,struct nilfs_palloc_req*) ;
 int nilfs_dat_prepare_entry (struct inode*,struct nilfs_palloc_req*,int ) ;

int nilfs_dat_mark_dirty(struct inode *dat, __u64 vblocknr)
{
 struct nilfs_palloc_req req;
 int ret;

 req.pr_entry_nr = vblocknr;
 ret = nilfs_dat_prepare_entry(dat, &req, 0);
 if (ret == 0)
  nilfs_dat_commit_entry(dat, &req);
 return ret;
}
