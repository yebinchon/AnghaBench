
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_req {int pr_entry_bh; } ;
struct inode {int dummy; } ;


 int brelse (int ) ;

__attribute__((used)) static void nilfs_dat_abort_entry(struct inode *dat,
      struct nilfs_palloc_req *req)
{
 brelse(req->pr_entry_bh);
}
