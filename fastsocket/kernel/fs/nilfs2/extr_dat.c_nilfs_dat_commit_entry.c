
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_req {int pr_entry_bh; } ;
struct inode {int dummy; } ;


 int brelse (int ) ;
 int nilfs_mdt_mark_buffer_dirty (int ) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;

__attribute__((used)) static void nilfs_dat_commit_entry(struct inode *dat,
       struct nilfs_palloc_req *req)
{
 nilfs_mdt_mark_buffer_dirty(req->pr_entry_bh);
 nilfs_mdt_mark_dirty(dat);
 brelse(req->pr_entry_bh);
}
