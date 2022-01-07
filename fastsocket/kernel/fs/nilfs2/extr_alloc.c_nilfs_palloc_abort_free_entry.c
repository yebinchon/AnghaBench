
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_req {int * pr_desc_bh; int * pr_bitmap_bh; scalar_t__ pr_entry_nr; } ;
struct inode {int dummy; } ;


 int brelse (int *) ;

void nilfs_palloc_abort_free_entry(struct inode *inode,
       struct nilfs_palloc_req *req)
{
 brelse(req->pr_bitmap_bh);
 brelse(req->pr_desc_bh);

 req->pr_entry_nr = 0;
 req->pr_bitmap_bh = ((void*)0);
 req->pr_desc_bh = ((void*)0);
}
