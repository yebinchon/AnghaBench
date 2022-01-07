
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ loff_t ;
typedef int get_block_t ;
typedef int dio_submit_t ;
typedef int dio_iodone_t ;


 int DIO_LOCKING ;
 int WRITE ;
 scalar_t__ __blockdev_direct_IO_newtrunc (int,struct kiocb*,struct inode*,struct block_device*,struct iovec const*,scalar_t__,unsigned long,int ,int ,int ,int) ;
 scalar_t__ i_size_read (struct inode*) ;
 scalar_t__ iov_length (struct iovec const*,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int vmtruncate (struct inode*,scalar_t__) ;

__attribute__((used)) static inline ssize_t
do_blockdev_direct_IO(int rw, struct kiocb *iocb, struct inode *inode,
 struct block_device *bdev, const struct iovec *iov, loff_t offset,
 unsigned long nr_segs, get_block_t get_block, dio_iodone_t end_io,
 dio_submit_t submit_io, int flags)
{
 ssize_t retval;

 retval = __blockdev_direct_IO_newtrunc(rw, iocb, inode, bdev, iov,
   offset, nr_segs, get_block, end_io, submit_io, flags);
 if (flags & DIO_LOCKING) {
  if (unlikely((rw & WRITE) && retval < 0)) {
   loff_t isize = i_size_read(inode);
   loff_t end = offset + iov_length(iov, nr_segs);

   if (end > isize)
    vmtruncate(inode, isize);
  }
 }

 return retval;
}
