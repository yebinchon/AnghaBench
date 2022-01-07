
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;
struct iovec {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EIO ;

__attribute__((used)) static ssize_t bad_file_aio_write(struct kiocb *iocb, const struct iovec *iov,
   unsigned long nr_segs, loff_t pos)
{
 return -EIO;
}
