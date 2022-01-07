
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int SKF_AD_OFF ;
 void* __load_pointer (struct sk_buff*,int) ;
 void* skb_header_pointer (struct sk_buff*,int,unsigned int,void*) ;

__attribute__((used)) static inline void *load_pointer(struct sk_buff *skb, int k,
     unsigned int size, void *buffer)
{
 if (k >= 0)
  return skb_header_pointer(skb, k, size, buffer);
 else {
  if (k >= SKF_AD_OFF)
   return ((void*)0);
  return __load_pointer(skb, k);
 }
}
