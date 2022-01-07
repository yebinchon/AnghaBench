
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_req {int pr_entry_bh; int pr_entry_nr; } ;
struct inode {int dummy; } ;


 int nilfs_palloc_get_entry_block (struct inode*,int ,int,int *) ;

__attribute__((used)) static int nilfs_dat_prepare_entry(struct inode *dat,
       struct nilfs_palloc_req *req, int create)
{
 return nilfs_palloc_get_entry_block(dat, req->pr_entry_nr,
         create, &req->pr_entry_bh);
}
