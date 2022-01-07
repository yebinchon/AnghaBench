
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocfs2_truncate_log {TYPE_2__* tl_recs; int tl_used; int tl_count; } ;
struct ocfs2_super {int sb; struct buffer_head* osb_tl_bh; struct inode* osb_tl_inode; } ;
struct TYPE_4__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct inode {int i_mutex; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;
struct TYPE_5__ {void* t_clusters; void* t_start; } ;


 int BUG_ON (int) ;
 int ENOSPC ;
 int INODE_CACHE (struct inode*) ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int OCFS2_IS_VALID_DINODE (struct ocfs2_dinode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (unsigned int) ;
 void* le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (void*) ;
 int mlog (int ,char*,int,unsigned int,unsigned int,...) ;
 int mlog_bug_on_msg (int,char*,unsigned long long,unsigned int,void*) ;
 int mlog_entry (char*,unsigned long long,unsigned int) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int mutex_trylock (int *) ;
 unsigned int ocfs2_blocks_to_clusters (int ,scalar_t__) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 scalar_t__ ocfs2_truncate_log_can_coalesce (struct ocfs2_truncate_log*,unsigned int) ;
 unsigned int ocfs2_truncate_recs_per_inode (int ) ;

int ocfs2_truncate_log_append(struct ocfs2_super *osb,
         handle_t *handle,
         u64 start_blk,
         unsigned int num_clusters)
{
 int status, index;
 unsigned int start_cluster, tl_count;
 struct inode *tl_inode = osb->osb_tl_inode;
 struct buffer_head *tl_bh = osb->osb_tl_bh;
 struct ocfs2_dinode *di;
 struct ocfs2_truncate_log *tl;

 mlog_entry("start_blk = %llu, num_clusters = %u\n",
     (unsigned long long)start_blk, num_clusters);

 BUG_ON(mutex_trylock(&tl_inode->i_mutex));

 start_cluster = ocfs2_blocks_to_clusters(osb->sb, start_blk);

 di = (struct ocfs2_dinode *) tl_bh->b_data;




 BUG_ON(!OCFS2_IS_VALID_DINODE(di));

 tl = &di->id2.i_dealloc;
 tl_count = le16_to_cpu(tl->tl_count);
 mlog_bug_on_msg(tl_count > ocfs2_truncate_recs_per_inode(osb->sb) ||
   tl_count == 0,
   "Truncate record count on #%llu invalid "
   "wanted %u, actual %u\n",
   (unsigned long long)OCFS2_I(tl_inode)->ip_blkno,
   ocfs2_truncate_recs_per_inode(osb->sb),
   le16_to_cpu(tl->tl_count));


 index = le16_to_cpu(tl->tl_used);
 if (index >= tl_count) {
  status = -ENOSPC;
  mlog_errno(status);
  goto bail;
 }

 status = ocfs2_journal_access_di(handle, INODE_CACHE(tl_inode), tl_bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 mlog(0, "Log truncate of %u clusters starting at cluster %u to "
      "%llu (index = %d)\n", num_clusters, start_cluster,
      (unsigned long long)OCFS2_I(tl_inode)->ip_blkno, index);

 if (ocfs2_truncate_log_can_coalesce(tl, start_cluster)) {




  index--;

  num_clusters += le32_to_cpu(tl->tl_recs[index].t_clusters);
  mlog(0, "Coalesce with index %u (start = %u, clusters = %u)\n",
       index, le32_to_cpu(tl->tl_recs[index].t_start),
       num_clusters);
 } else {
  tl->tl_recs[index].t_start = cpu_to_le32(start_cluster);
  tl->tl_used = cpu_to_le16(index + 1);
 }
 tl->tl_recs[index].t_clusters = cpu_to_le32(num_clusters);

 status = ocfs2_journal_dirty(handle, tl_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

bail:
 mlog_exit(status);
 return status;
}
