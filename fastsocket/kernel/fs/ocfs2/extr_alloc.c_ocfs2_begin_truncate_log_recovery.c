
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_truncate_log {scalar_t__ tl_used; } ;
struct ocfs2_super {int sb; } ;
struct TYPE_2__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {int i_check; TYPE_1__ id2; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; int b_size; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INODE_CACHE (struct inode*) ;
 int OCFS2_IS_VALID_DINODE (struct ocfs2_dinode*) ;
 int brelse (struct buffer_head*) ;
 int iput (struct inode*) ;
 int kfree (struct ocfs2_dinode*) ;
 struct ocfs2_dinode* kmalloc (int ,int ) ;
 int le16_to_cpu (scalar_t__) ;
 int memcpy (struct ocfs2_dinode*,scalar_t__,int ) ;
 int mlog (int ,char*,int) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_compute_meta_ecc (int ,scalar_t__,int *) ;
 int ocfs2_get_truncate_log_info (struct ocfs2_super*,int,struct inode**,struct buffer_head**) ;
 int ocfs2_write_block (struct ocfs2_super*,struct buffer_head*,int ) ;

int ocfs2_begin_truncate_log_recovery(struct ocfs2_super *osb,
          int slot_num,
          struct ocfs2_dinode **tl_copy)
{
 int status;
 struct inode *tl_inode = ((void*)0);
 struct buffer_head *tl_bh = ((void*)0);
 struct ocfs2_dinode *di;
 struct ocfs2_truncate_log *tl;

 *tl_copy = ((void*)0);

 mlog(0, "recover truncate log from slot %d\n", slot_num);

 status = ocfs2_get_truncate_log_info(osb, slot_num, &tl_inode, &tl_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 di = (struct ocfs2_dinode *) tl_bh->b_data;




 BUG_ON(!OCFS2_IS_VALID_DINODE(di));

 tl = &di->id2.i_dealloc;
 if (le16_to_cpu(tl->tl_used)) {
  mlog(0, "We'll have %u logs to recover\n",
       le16_to_cpu(tl->tl_used));

  *tl_copy = kmalloc(tl_bh->b_size, GFP_KERNEL);
  if (!(*tl_copy)) {
   status = -ENOMEM;
   mlog_errno(status);
   goto bail;
  }



  memcpy(*tl_copy, tl_bh->b_data, tl_bh->b_size);



  tl->tl_used = 0;

  ocfs2_compute_meta_ecc(osb->sb, tl_bh->b_data, &di->i_check);
  status = ocfs2_write_block(osb, tl_bh, INODE_CACHE(tl_inode));
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }
 }

bail:
 if (tl_inode)
  iput(tl_inode);
 brelse(tl_bh);

 if (status < 0 && (*tl_copy)) {
  kfree(*tl_copy);
  *tl_copy = ((void*)0);
 }

 mlog_exit(status);
 return status;
}
