
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 scalar_t__ rep_headroom ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

struct sk_buff *tipc_cfg_reply_alloc(int payload_size)
{
 struct sk_buff *buf;

 buf = alloc_skb(rep_headroom + payload_size, GFP_ATOMIC);
 if (buf)
  skb_reserve(buf, rep_headroom);
 return buf;
}
