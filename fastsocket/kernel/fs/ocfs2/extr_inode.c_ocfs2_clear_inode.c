
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ocfs2_inode_info {unsigned long long ip_blkno; int ip_flags; int ip_jinode; scalar_t__ ip_dir_start_lookup; int ip_open_count; int ip_alloc_sem; int ip_io_mutex; int ip_lock; int ip_open_lockres; int ip_inode_lockres; int ip_rw_lockres; int ip_io_markers; } ;
struct inode {int i_sb; int i_ino; int i_nlink; } ;
struct TYPE_7__ {TYPE_1__* journal; } ;
struct TYPE_6__ {int ci_flags; int ci_num_cached; } ;
struct TYPE_5__ {int j_journal; } ;


 TYPE_2__* INODE_CACHE (struct inode*) ;
 int OCFS2_CACHE_FL_INLINE ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_DELETED ;
 TYPE_3__* OCFS2_SB (int ) ;
 int down_write_trylock (int *) ;
 int jbd2_journal_release_jbd_inode (int ,int *) ;
 int list_empty (int *) ;
 int mlog (int ,char*,unsigned long long,int ) ;
 int mlog_bug_on_msg (int,char*,unsigned long long,...) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit_void () ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_checkpoint_inode (struct inode*) ;
 int ocfs2_drop_inode_locks (struct inode*) ;
 int ocfs2_extent_map_trunc (struct inode*,int ) ;
 int ocfs2_lock_res_free (int *) ;
 int ocfs2_mark_lockres_freeing (int *) ;
 int ocfs2_metadata_cache_exit (TYPE_2__*) ;
 int ocfs2_open_unlock (struct inode*) ;
 int spin_is_locked (int *) ;
 int up_write (int *) ;

void ocfs2_clear_inode(struct inode *inode)
{
 int status;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);

 mlog_entry_void();

 if (!inode)
  goto bail;

 mlog(0, "Clearing inode: %llu, nlink = %u\n",
      (unsigned long long)OCFS2_I(inode)->ip_blkno, inode->i_nlink);

 mlog_bug_on_msg(OCFS2_SB(inode->i_sb) == ((void*)0),
   "Inode=%lu\n", inode->i_ino);



 ocfs2_open_unlock(inode);



 ocfs2_mark_lockres_freeing(&oi->ip_rw_lockres);
 ocfs2_mark_lockres_freeing(&oi->ip_inode_lockres);
 ocfs2_mark_lockres_freeing(&oi->ip_open_lockres);







 if (!(OCFS2_I(inode)->ip_flags & OCFS2_INODE_DELETED))
  ocfs2_checkpoint_inode(inode);

 mlog_bug_on_msg(!list_empty(&oi->ip_io_markers),
   "Clear inode of %llu, inode has io markers\n",
   (unsigned long long)oi->ip_blkno);

 ocfs2_extent_map_trunc(inode, 0);

 status = ocfs2_drop_inode_locks(inode);
 if (status < 0)
  mlog_errno(status);

 ocfs2_lock_res_free(&oi->ip_rw_lockres);
 ocfs2_lock_res_free(&oi->ip_inode_lockres);
 ocfs2_lock_res_free(&oi->ip_open_lockres);

 ocfs2_metadata_cache_exit(INODE_CACHE(inode));

 mlog_bug_on_msg(INODE_CACHE(inode)->ci_num_cached,
   "Clear inode of %llu, inode has %u cache items\n",
   (unsigned long long)oi->ip_blkno,
   INODE_CACHE(inode)->ci_num_cached);

 mlog_bug_on_msg(!(INODE_CACHE(inode)->ci_flags & OCFS2_CACHE_FL_INLINE),
   "Clear inode of %llu, inode has a bad flag\n",
   (unsigned long long)oi->ip_blkno);

 mlog_bug_on_msg(spin_is_locked(&oi->ip_lock),
   "Clear inode of %llu, inode is locked\n",
   (unsigned long long)oi->ip_blkno);

 mlog_bug_on_msg(!mutex_trylock(&oi->ip_io_mutex),
   "Clear inode of %llu, io_mutex is locked\n",
   (unsigned long long)oi->ip_blkno);
 mutex_unlock(&oi->ip_io_mutex);





 mlog_bug_on_msg(!down_write_trylock(&oi->ip_alloc_sem),
   "Clear inode of %llu, alloc_sem is locked\n",
   (unsigned long long)oi->ip_blkno);
 up_write(&oi->ip_alloc_sem);

 mlog_bug_on_msg(oi->ip_open_count,
   "Clear inode of %llu has open count %d\n",
   (unsigned long long)oi->ip_blkno, oi->ip_open_count);


 oi->ip_flags = 0;
 oi->ip_dir_start_lookup = 0;
 oi->ip_blkno = 0ULL;






 jbd2_journal_release_jbd_inode(OCFS2_SB(inode->i_sb)->journal->j_journal,
           &oi->ip_jinode);

bail:
 mlog_exit_void();
}
