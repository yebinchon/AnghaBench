
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
typedef int __be16 ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int htons (int ) ;
 int* skb_header_pointer (struct sk_buff*,int ,int,int*) ;

__attribute__((used)) static __be16 gprs_type_trans(struct sk_buff *skb)
{
 const u8 *pvfc;
 u8 buf;

 pvfc = skb_header_pointer(skb, 0, 1, &buf);
 if (!pvfc)
  return htons(0);

 switch (*pvfc >> 4) {
 case 4:
  return htons(ETH_P_IP);
 case 6:
  return htons(ETH_P_IPV6);
 }
 return htons(0);
}
