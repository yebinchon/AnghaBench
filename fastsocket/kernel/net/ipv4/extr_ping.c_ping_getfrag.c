
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pingfakehdr {int wcheck; int iov; } ;
struct icmphdr {int dummy; } ;


 int BUG () ;
 int EFAULT ;
 scalar_t__ csum_partial_copy_fromiovecend (char*,int ,int,int,int *) ;

__attribute__((used)) static int ping_getfrag(void *from, char * to,
   int offset, int fraglen, int odd, struct sk_buff *skb)
{
 struct pingfakehdr *pfh = (struct pingfakehdr *)from;

 if (offset == 0) {
  if (fraglen < sizeof(struct icmphdr))
   BUG();
  if (csum_partial_copy_fromiovecend(to + sizeof(struct icmphdr),
       pfh->iov, 0, fraglen - sizeof(struct icmphdr),
       &pfh->wcheck))
   return -EFAULT;

  return 0;
 }
 if (offset < sizeof(struct icmphdr))
  BUG();
 if (csum_partial_copy_fromiovecend
   (to, pfh->iov, offset - sizeof(struct icmphdr),
    fraglen, &pfh->wcheck))
  return -EFAULT;
 return 0;
}
