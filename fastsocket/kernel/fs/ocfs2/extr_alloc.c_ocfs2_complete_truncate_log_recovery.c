
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_truncate_log {TYPE_2__* tl_recs; int tl_used; } ;
struct ocfs2_super {int sb; struct inode* osb_tl_inode; } ;
struct TYPE_4__ {struct ocfs2_truncate_log i_dealloc; } ;
struct ocfs2_dinode {int i_blkno; TYPE_1__ id2; } ;
struct inode {int i_mutex; } ;
typedef int handle_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;
struct TYPE_5__ {int t_start; int t_clusters; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int *) ;
 int ML_ERROR ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int OCFS2_TRUNCATE_LOG_UPDATE ;
 int PTR_ERR (int *) ;
 int __ocfs2_flush_truncate_log (struct ocfs2_super*) ;
 unsigned int le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,...) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_clusters_to_blocks (int ,unsigned int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_truncate_log_append (struct ocfs2_super*,int *,int ,unsigned int) ;
 scalar_t__ ocfs2_truncate_log_needs_flush (struct ocfs2_super*) ;

int ocfs2_complete_truncate_log_recovery(struct ocfs2_super *osb,
      struct ocfs2_dinode *tl_copy)
{
 int status = 0;
 int i;
 unsigned int clusters, num_recs, start_cluster;
 u64 start_blk;
 handle_t *handle;
 struct inode *tl_inode = osb->osb_tl_inode;
 struct ocfs2_truncate_log *tl;

 mlog_entry_void();

 if (OCFS2_I(tl_inode)->ip_blkno == le64_to_cpu(tl_copy->i_blkno)) {
  mlog(ML_ERROR, "Asked to recover my own truncate log!\n");
  return -EINVAL;
 }

 tl = &tl_copy->id2.i_dealloc;
 num_recs = le16_to_cpu(tl->tl_used);
 mlog(0, "cleanup %u records from %llu\n", num_recs,
      (unsigned long long)le64_to_cpu(tl_copy->i_blkno));

 mutex_lock(&tl_inode->i_mutex);
 for(i = 0; i < num_recs; i++) {
  if (ocfs2_truncate_log_needs_flush(osb)) {
   status = __ocfs2_flush_truncate_log(osb);
   if (status < 0) {
    mlog_errno(status);
    goto bail_up;
   }
  }

  handle = ocfs2_start_trans(osb, OCFS2_TRUNCATE_LOG_UPDATE);
  if (IS_ERR(handle)) {
   status = PTR_ERR(handle);
   mlog_errno(status);
   goto bail_up;
  }

  clusters = le32_to_cpu(tl->tl_recs[i].t_clusters);
  start_cluster = le32_to_cpu(tl->tl_recs[i].t_start);
  start_blk = ocfs2_clusters_to_blocks(osb->sb, start_cluster);

  status = ocfs2_truncate_log_append(osb, handle,
         start_blk, clusters);
  ocfs2_commit_trans(osb, handle);
  if (status < 0) {
   mlog_errno(status);
   goto bail_up;
  }
 }

bail_up:
 mutex_unlock(&tl_inode->i_mutex);

 mlog_exit(status);
 return status;
}
