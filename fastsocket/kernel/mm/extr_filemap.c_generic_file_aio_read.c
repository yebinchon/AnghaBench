
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct iovec {size_t iov_len; scalar_t__ iov_base; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct address_space* f_mapping; } ;
struct address_space {TYPE_1__* a_ops; struct inode* host; } ;
typedef size_t ssize_t ;
struct TYPE_6__ {scalar_t__ buf; } ;
struct TYPE_7__ {size_t error; scalar_t__ count; scalar_t__ written; TYPE_2__ arg; } ;
typedef TYPE_3__ read_descriptor_t ;
typedef scalar_t__ loff_t ;
struct TYPE_5__ {size_t (* direct_IO ) (int ,struct kiocb*,struct iovec const*,scalar_t__,unsigned long) ;} ;


 int O_DIRECT ;
 int READ ;
 int VERIFY_WRITE ;
 int do_generic_file_read (struct file*,scalar_t__*,TYPE_3__*,int ) ;
 int file_accessed (struct file*) ;
 int file_read_actor ;
 size_t filemap_write_and_wait_range (struct address_space*,scalar_t__,scalar_t__) ;
 size_t generic_segment_checks (struct iovec const*,unsigned long*,size_t*,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 scalar_t__ iov_length (struct iovec const*,unsigned long) ;
 size_t stub1 (int ,struct kiocb*,struct iovec const*,scalar_t__,unsigned long) ;

ssize_t
generic_file_aio_read(struct kiocb *iocb, const struct iovec *iov,
  unsigned long nr_segs, loff_t pos)
{
 struct file *filp = iocb->ki_filp;
 ssize_t retval;
 unsigned long seg = 0;
 size_t count;
 loff_t *ppos = &iocb->ki_pos;

 count = 0;
 retval = generic_segment_checks(iov, &nr_segs, &count, VERIFY_WRITE);
 if (retval)
  return retval;


 if (filp->f_flags & O_DIRECT) {
  loff_t size;
  struct address_space *mapping;
  struct inode *inode;

  mapping = filp->f_mapping;
  inode = mapping->host;
  if (!count)
   goto out;
  size = i_size_read(inode);
  if (pos < size) {
   retval = filemap_write_and_wait_range(mapping, pos,
     pos + iov_length(iov, nr_segs) - 1);
   if (!retval) {
    retval = mapping->a_ops->direct_IO(READ, iocb,
       iov, pos, nr_segs);
   }
   if (retval > 0) {
    *ppos = pos + retval;
    count -= retval;
   }
   if (retval < 0 || !count || *ppos >= size) {
    file_accessed(filp);
    goto out;
   }
  }
 }

 count = retval;
 for (seg = 0; seg < nr_segs; seg++) {
  read_descriptor_t desc;
  loff_t offset = 0;





  if (count) {
   if (count > iov[seg].iov_len) {
    count -= iov[seg].iov_len;
    continue;
   }
   offset = count;
   count = 0;
  }

  desc.written = 0;
  desc.arg.buf = iov[seg].iov_base + offset;
  desc.count = iov[seg].iov_len - offset;
  if (desc.count == 0)
   continue;
  desc.error = 0;
  do_generic_file_read(filp, ppos, &desc, file_read_actor);
  retval += desc.written;
  if (desc.error) {
   retval = retval ?: desc.error;
   break;
  }
  if (desc.count > 0)
   break;
 }
out:
 return retval;
}
