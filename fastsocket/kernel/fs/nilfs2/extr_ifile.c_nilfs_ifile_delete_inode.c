
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nilfs_palloc_req {TYPE_1__* pr_entry_bh; int pr_entry_nr; } ;
struct nilfs_inode {scalar_t__ i_flags; } ;
struct inode {int dummy; } ;
typedef int ino_t ;
struct TYPE_5__ {int b_page; } ;


 int KM_USER0 ;
 int brelse (TYPE_1__*) ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 int nilfs_mdt_mark_buffer_dirty (TYPE_1__*) ;
 int nilfs_palloc_abort_free_entry (struct inode*,struct nilfs_palloc_req*) ;
 struct nilfs_inode* nilfs_palloc_block_get_entry (struct inode*,int ,TYPE_1__*,void*) ;
 int nilfs_palloc_commit_free_entry (struct inode*,struct nilfs_palloc_req*) ;
 int nilfs_palloc_get_entry_block (struct inode*,int ,int ,TYPE_1__**) ;
 int nilfs_palloc_prepare_free_entry (struct inode*,struct nilfs_palloc_req*) ;

int nilfs_ifile_delete_inode(struct inode *ifile, ino_t ino)
{
 struct nilfs_palloc_req req = {
  .pr_entry_nr = ino, .pr_entry_bh = ((void*)0)
 };
 struct nilfs_inode *raw_inode;
 void *kaddr;
 int ret;

 ret = nilfs_palloc_prepare_free_entry(ifile, &req);
 if (!ret) {
  ret = nilfs_palloc_get_entry_block(ifile, req.pr_entry_nr, 0,
         &req.pr_entry_bh);
  if (ret < 0)
   nilfs_palloc_abort_free_entry(ifile, &req);
 }
 if (ret < 0) {
  brelse(req.pr_entry_bh);
  return ret;
 }

 kaddr = kmap_atomic(req.pr_entry_bh->b_page, KM_USER0);
 raw_inode = nilfs_palloc_block_get_entry(ifile, req.pr_entry_nr,
       req.pr_entry_bh, kaddr);
 raw_inode->i_flags = 0;
 kunmap_atomic(kaddr, KM_USER0);

 nilfs_mdt_mark_buffer_dirty(req.pr_entry_bh);
 brelse(req.pr_entry_bh);

 nilfs_palloc_commit_free_entry(ifile, &req);

 return 0;
}
