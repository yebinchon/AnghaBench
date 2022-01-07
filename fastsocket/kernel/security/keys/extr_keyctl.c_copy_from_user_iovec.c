
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int iov_len; int iov_base; } ;


 long EFAULT ;
 scalar_t__ copy_from_user (void*,int ,int ) ;

__attribute__((used)) static long copy_from_user_iovec(void *buffer, const struct iovec *iov,
     unsigned ioc)
{
 for (; ioc > 0; ioc--) {
  if (copy_from_user(buffer, iov->iov_base, iov->iov_len) != 0)
   return -EFAULT;
  buffer += iov->iov_len;
  iov++;
 }
 return 0;
}
