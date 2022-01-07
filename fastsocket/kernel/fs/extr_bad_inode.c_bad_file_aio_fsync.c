
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;


 int EIO ;

__attribute__((used)) static int bad_file_aio_fsync(struct kiocb *iocb, int datasync)
{
 return -EIO;
}
