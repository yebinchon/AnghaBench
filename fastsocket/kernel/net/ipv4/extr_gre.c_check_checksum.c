
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; int csum; } ;
typedef int __sum16 ;




 int __skb_checksum_complete (struct sk_buff*) ;
 int csum_fold (int ) ;

__attribute__((used)) static __sum16 check_checksum(struct sk_buff *skb)
{
 __sum16 csum = 0;

 switch (skb->ip_summed) {
 case 129:
  csum = csum_fold(skb->csum);

  if (!csum)
   break;


 case 128:
  skb->csum = 0;
  csum = __skb_checksum_complete(skb);
  skb->ip_summed = 129;
  break;
 }

 return csum;
}
