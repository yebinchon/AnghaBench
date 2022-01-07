
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_group_desc {int bg_free_bits_count; scalar_t__ bg_bitmap; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ b_committed_data; } ;


 int BUG_ON (int) ;
 int INODE_CACHE (struct inode*) ;
 int OCFS2_IS_VALID_GROUP_DESC (struct ocfs2_group_desc*) ;
 int OCFS2_JOURNAL_ACCESS_UNDO ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 TYPE_1__* bh2jh (struct buffer_head*) ;
 int jbd_lock_bh_state (struct buffer_head*) ;
 int jbd_unlock_bh_state (struct buffer_head*) ;
 int le16_add_cpu (int *,unsigned int) ;
 int mlog (int ,char*,unsigned int,unsigned int) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int ocfs2_clear_bit (unsigned int,unsigned long*) ;
 scalar_t__ ocfs2_is_cluster_bitmap (struct inode*) ;
 int ocfs2_journal_access_gd (int *,int ,struct buffer_head*,int) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_set_bit (unsigned int,unsigned long*) ;

__attribute__((used)) static inline int ocfs2_block_group_clear_bits(handle_t *handle,
            struct inode *alloc_inode,
            struct ocfs2_group_desc *bg,
            struct buffer_head *group_bh,
            unsigned int bit_off,
            unsigned int num_bits)
{
 int status;
 unsigned int tmp;
 int journal_type = OCFS2_JOURNAL_ACCESS_WRITE;
 struct ocfs2_group_desc *undo_bg = ((void*)0);
 int cluster_bitmap = 0;

 mlog_entry_void();



 BUG_ON(!OCFS2_IS_VALID_GROUP_DESC(bg));

 mlog(0, "off = %u, num = %u\n", bit_off, num_bits);

 if (ocfs2_is_cluster_bitmap(alloc_inode))
  journal_type = OCFS2_JOURNAL_ACCESS_UNDO;

 status = ocfs2_journal_access_gd(handle, INODE_CACHE(alloc_inode),
      group_bh, journal_type);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 if (ocfs2_is_cluster_bitmap(alloc_inode))
  cluster_bitmap = 1;

 if (cluster_bitmap) {
  jbd_lock_bh_state(group_bh);
  undo_bg = (struct ocfs2_group_desc *)
     bh2jh(group_bh)->b_committed_data;
  BUG_ON(!undo_bg);
 }

 tmp = num_bits;
 while(tmp--) {
  ocfs2_clear_bit((bit_off + tmp),
    (unsigned long *) bg->bg_bitmap);
  if (cluster_bitmap)
   ocfs2_set_bit(bit_off + tmp,
          (unsigned long *) undo_bg->bg_bitmap);
 }
 le16_add_cpu(&bg->bg_free_bits_count, num_bits);

 if (cluster_bitmap)
  jbd_unlock_bh_state(group_bh);

 status = ocfs2_journal_dirty(handle, group_bh);
 if (status < 0)
  mlog_errno(status);
bail:
 return status;
}
