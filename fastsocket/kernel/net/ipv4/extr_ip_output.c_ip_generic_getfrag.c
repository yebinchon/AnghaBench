
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; int csum; } ;
struct iovec {int dummy; } ;
typedef int __wsum ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int EFAULT ;
 int csum_block_add (int ,int ,int) ;
 scalar_t__ csum_partial_copy_fromiovecend (char*,struct iovec*,int,int,int *) ;
 scalar_t__ memcpy_fromiovecend (char*,struct iovec*,int,int) ;

int
ip_generic_getfrag(void *from, char *to, int offset, int len, int odd, struct sk_buff *skb)
{
 struct iovec *iov = from;

 if (skb->ip_summed == CHECKSUM_PARTIAL) {
  if (memcpy_fromiovecend(to, iov, offset, len) < 0)
   return -EFAULT;
 } else {
  __wsum csum = 0;
  if (csum_partial_copy_fromiovecend(to, iov, offset, len, &csum) < 0)
   return -EFAULT;
  skb->csum = csum_block_add(skb->csum, csum, odd);
 }
 return 0;
}
