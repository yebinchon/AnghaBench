
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct file* file; } ;
struct splice_desc {size_t total_len; unsigned int flags; int pos; int num_spliced; TYPE_1__ u; } ;
struct pipe_inode_info {int dummy; } ;
struct inode {int i_sb; int i_mutex; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {struct inode* host; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int I_MUTEX_CHILD ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int balance_dirty_pages_ratelimited_nr (struct address_space*,unsigned long) ;
 int file_remove_suid (struct file*) ;
 int file_update_time (struct file*) ;
 int generic_write_sync (struct file*,int,int) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int pipe_lock (struct pipe_inode_info*) ;
 int pipe_to_file ;
 int pipe_unlock (struct pipe_inode_info*) ;
 int sb_end_write (int ) ;
 int sb_start_write (int ) ;
 int splice_from_pipe_begin (struct splice_desc*) ;
 int splice_from_pipe_end (struct pipe_inode_info*,struct splice_desc*) ;
 int splice_from_pipe_feed (struct pipe_inode_info*,struct splice_desc*,int ) ;
 int splice_from_pipe_next (struct pipe_inode_info*,struct splice_desc*) ;

ssize_t
generic_file_splice_write(struct pipe_inode_info *pipe, struct file *out,
     loff_t *ppos, size_t len, unsigned int flags)
{
 struct address_space *mapping = out->f_mapping;
 struct inode *inode = mapping->host;
 struct splice_desc sd = {
  .total_len = len,
  .flags = flags,
  .pos = *ppos,
  .u.file = out,
 };
 ssize_t ret;

 sb_start_write(inode->i_sb);

 pipe_lock(pipe);

 splice_from_pipe_begin(&sd);
 do {
  ret = splice_from_pipe_next(pipe, &sd);
  if (ret <= 0)
   break;

  mutex_lock_nested(&inode->i_mutex, I_MUTEX_CHILD);
  ret = file_remove_suid(out);
  if (!ret) {
   file_update_time(out);
   ret = splice_from_pipe_feed(pipe, &sd, pipe_to_file);
  }
  mutex_unlock(&inode->i_mutex);
 } while (ret > 0);
 splice_from_pipe_end(pipe, &sd);

 pipe_unlock(pipe);

 if (sd.num_spliced)
  ret = sd.num_spliced;

 if (ret > 0) {
  unsigned long nr_pages;
  int err;

  nr_pages = (ret + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;

  err = generic_write_sync(out, *ppos, ret);
  if (err)
   ret = err;
  else
   *ppos += ret;
  balance_dirty_pages_ratelimited_nr(mapping, nr_pages);
 }
 sb_end_write(inode->i_sb);

 return ret;
}
