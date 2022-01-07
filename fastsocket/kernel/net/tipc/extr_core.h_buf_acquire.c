
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int * next; } ;


 int BUF_HEADROOM ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb_fclone (unsigned int,int ) ;
 int skb_put (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static inline struct sk_buff *buf_acquire(u32 size)
{
 struct sk_buff *skb;
 unsigned int buf_size = (BUF_HEADROOM + size + 3) & ~3u;

 skb = alloc_skb_fclone(buf_size, GFP_ATOMIC);
 if (skb) {
  skb_reserve(skb, BUF_HEADROOM);
  skb_put(skb, size);
  skb->next = ((void*)0);
 }
 return skb;
}
