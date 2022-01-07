
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int i_mode; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {scalar_t__ nrpages; TYPE_1__* a_ops; struct inode* host; } ;
typedef int ssize_t ;
typedef size_t pgoff_t ;
typedef size_t loff_t ;
struct TYPE_2__ {int (* direct_IO ) (int ,struct kiocb*,struct iovec const*,size_t,unsigned long) ;} ;


 int EBUSY ;
 size_t PAGE_CACHE_SHIFT ;
 int S_ISBLK (int ) ;
 int WRITE ;
 int filemap_write_and_wait_range (struct address_space*,size_t,size_t) ;
 size_t i_size_read (struct inode*) ;
 int i_size_write (struct inode*,size_t) ;
 int invalidate_inode_pages2_range (struct address_space*,size_t,size_t) ;
 size_t iov_length (struct iovec const*,unsigned long) ;
 unsigned long iov_shorten (struct iovec*,unsigned long,size_t) ;
 int mark_inode_dirty (struct inode*) ;
 int stub1 (int ,struct kiocb*,struct iovec const*,size_t,unsigned long) ;

ssize_t
generic_file_direct_write(struct kiocb *iocb, const struct iovec *iov,
  unsigned long *nr_segs, loff_t pos, loff_t *ppos,
  size_t count, size_t ocount)
{
 struct file *file = iocb->ki_filp;
 struct address_space *mapping = file->f_mapping;
 struct inode *inode = mapping->host;
 ssize_t written;
 size_t write_len;
 pgoff_t end;

 if (count != ocount)
  *nr_segs = iov_shorten((struct iovec *)iov, *nr_segs, count);

 write_len = iov_length(iov, *nr_segs);
 end = (pos + write_len - 1) >> PAGE_CACHE_SHIFT;

 written = filemap_write_and_wait_range(mapping, pos, pos + write_len - 1);
 if (written)
  goto out;







 if (mapping->nrpages) {
  written = invalidate_inode_pages2_range(mapping,
     pos >> PAGE_CACHE_SHIFT, end);




  if (written) {
   if (written == -EBUSY)
    return 0;
   goto out;
  }
 }

 written = mapping->a_ops->direct_IO(WRITE, iocb, iov, pos, *nr_segs);
 if (mapping->nrpages) {
  invalidate_inode_pages2_range(mapping,
           pos >> PAGE_CACHE_SHIFT, end);
 }

 if (written > 0) {
  loff_t end = pos + written;
  if (end > i_size_read(inode) && !S_ISBLK(inode->i_mode)) {
   i_size_write(inode, end);
   mark_inode_dirty(inode);
  }
  *ppos = end;
 }
out:
 return written;
}
