
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocfs2_super {TYPE_3__* journal; } ;
struct kiocb {scalar_t__ ki_pos; int ki_left; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {scalar_t__ i_size; int i_mutex; int i_alloc_sem; int i_mode; int i_sb; } ;
struct TYPE_7__ {TYPE_4__* dentry; } ;
struct file {int f_flags; int f_mapping; TYPE_2__ f_path; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_10__ {scalar_t__ ip_clusters; } ;
struct TYPE_6__ {int name; int len; } ;
struct TYPE_9__ {TYPE_1__ d_name; struct inode* d_inode; } ;
struct TYPE_8__ {int j_journal; } ;


 int BUG_ON (int) ;
 int EIOCBQUEUED ;
 scalar_t__ IS_SYNC (struct inode*) ;
 TYPE_5__* OCFS2_I (struct inode*) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int O_APPEND ;
 int O_DIRECT ;
 int O_SYNC ;
 int SB_FREEZE_WRITE ;
 int S_ISBLK (int ) ;
 int VERIFY_READ ;
 int __generic_file_aio_write (struct kiocb*,struct iovec const*,unsigned long,scalar_t__*) ;
 int down_read (int *) ;
 int filemap_fdatawait_range (int ,scalar_t__,scalar_t__) ;
 int filemap_fdatawrite_range (int ,scalar_t__,scalar_t__) ;
 int generic_file_direct_write (struct kiocb*,struct iovec const*,unsigned long*,scalar_t__,scalar_t__*,size_t,size_t) ;
 int generic_segment_checks (struct iovec const*,unsigned long*,size_t*,int ) ;
 int generic_write_checks (struct file*,scalar_t__*,size_t*,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int jbd2_journal_force_commit (int ) ;
 int mlog_entry (char*,struct file*,unsigned int,int ,int ) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_iocb_is_rw_locked (struct kiocb*) ;
 int ocfs2_iocb_set_rw_locked (struct kiocb*,int) ;
 int ocfs2_prepare_inode_for_write (TYPE_4__*,scalar_t__*,int ,int,int*) ;
 int ocfs2_rw_lock (struct inode*,int) ;
 int ocfs2_rw_unlock (struct inode*,int) ;
 int up_read (int *) ;
 int vfs_check_frozen (int ,int ) ;
 int vmtruncate (struct inode*,scalar_t__) ;

__attribute__((used)) static ssize_t ocfs2_file_aio_write(struct kiocb *iocb,
        const struct iovec *iov,
        unsigned long nr_segs,
        loff_t pos)
{
 int ret, direct_io, appending, rw_level, have_alloc_sem = 0;
 int can_do_direct;
 ssize_t written = 0;
 size_t ocount;
 size_t count;
 loff_t old_size, *ppos = &iocb->ki_pos;
 u32 old_clusters;
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_path.dentry->d_inode;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 mlog_entry("(0x%p, %u, '%.*s')\n", file,
     (unsigned int)nr_segs,
     file->f_path.dentry->d_name.len,
     file->f_path.dentry->d_name.name);

 if (iocb->ki_left == 0)
  return 0;

 vfs_check_frozen(inode->i_sb, SB_FREEZE_WRITE);

 appending = file->f_flags & O_APPEND ? 1 : 0;
 direct_io = file->f_flags & O_DIRECT ? 1 : 0;

 mutex_lock(&inode->i_mutex);

relock:

 if (direct_io) {
  down_read(&inode->i_alloc_sem);
  have_alloc_sem = 1;
 }


 rw_level = !direct_io;
 ret = ocfs2_rw_lock(inode, rw_level);
 if (ret < 0) {
  mlog_errno(ret);
  goto out_sems;
 }

 can_do_direct = direct_io;
 ret = ocfs2_prepare_inode_for_write(file->f_path.dentry, ppos,
         iocb->ki_left, appending,
         &can_do_direct);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }





 if (direct_io && !can_do_direct) {
  ocfs2_rw_unlock(inode, rw_level);
  up_read(&inode->i_alloc_sem);

  have_alloc_sem = 0;
  rw_level = -1;

  direct_io = 0;
  goto relock;
 }





 old_size = i_size_read(inode);
 old_clusters = OCFS2_I(inode)->ip_clusters;


 ocfs2_iocb_set_rw_locked(iocb, rw_level);

 if (direct_io) {
  ret = generic_segment_checks(iov, &nr_segs, &ocount,
          VERIFY_READ);
  if (ret)
   goto out_dio;

  count = ocount;
  ret = generic_write_checks(file, ppos, &count,
        S_ISBLK(inode->i_mode));
  if (ret)
   goto out_dio;

  written = generic_file_direct_write(iocb, iov, &nr_segs, *ppos,
          ppos, count, ocount);
  if (written < 0) {





   if (*ppos + count > inode->i_size)
    vmtruncate(inode, inode->i_size);
   ret = written;
   goto out_dio;
  }
 } else {
  written = __generic_file_aio_write(iocb, iov, nr_segs, ppos);
 }

out_dio:

 BUG_ON(ret == -EIOCBQUEUED && !(file->f_flags & O_DIRECT));

 if ((file->f_flags & O_SYNC && !direct_io) || IS_SYNC(inode)) {
  ret = filemap_fdatawrite_range(file->f_mapping, pos,
            pos + count - 1);
  if (ret < 0)
   written = ret;

  if (!ret && (old_size != i_size_read(inode) ||
      old_clusters != OCFS2_I(inode)->ip_clusters)) {
   ret = jbd2_journal_force_commit(osb->journal->j_journal);
   if (ret < 0)
    written = ret;
  }

  if (!ret)
   ret = filemap_fdatawait_range(file->f_mapping, pos,
            pos + count - 1);
 }
 if (ret == -EIOCBQUEUED || !ocfs2_iocb_is_rw_locked(iocb)) {
  rw_level = -1;
  have_alloc_sem = 0;
 }

out:
 if (rw_level != -1)
  ocfs2_rw_unlock(inode, rw_level);

out_sems:
 if (have_alloc_sem)
  up_read(&inode->i_alloc_sem);

 mutex_unlock(&inode->i_mutex);

 if (written)
  ret = written;
 mlog_exit(ret);
 return ret;
}
