
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int GFP_ATOMIC ;
 int PRINTR (char*,unsigned int) ;
 struct sk_buff* alloc_skb (unsigned int,int ) ;
 unsigned int max (unsigned int,unsigned int) ;

__attribute__((used)) static struct sk_buff *
nfulnl_alloc_skb(unsigned int inst_size, unsigned int pkt_size)
{
 struct sk_buff *skb;
 unsigned int n;




 n = max(inst_size, pkt_size);
 skb = alloc_skb(n, GFP_ATOMIC);
 if (!skb) {
  PRINTR("nfnetlink_log: can't alloc whole buffer (%u bytes)\n",
   inst_size);

  if (n > pkt_size) {



   skb = alloc_skb(pkt_size, GFP_ATOMIC);
   if (!skb)
    PRINTR("nfnetlink_log: can't even alloc %u "
           "bytes\n", pkt_size);
  }
 }

 return skb;
}
