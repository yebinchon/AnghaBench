
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int GFP_ATOMIC ;
 int PRINTR (char*,unsigned int) ;
 struct sk_buff* alloc_skb (unsigned int,int ) ;
 unsigned int max (unsigned int,int ) ;
 int nlbufsiz ;

__attribute__((used)) static struct sk_buff *ulog_alloc_skb(unsigned int size)
{
 struct sk_buff *skb;
 unsigned int n;





 n = max(size, nlbufsiz);
 skb = alloc_skb(n, GFP_ATOMIC);
 if (!skb) {
  PRINTR("ipt_ULOG: can't alloc whole buffer %ub!\n", n);

  if (n > size) {



   skb = alloc_skb(size, GFP_ATOMIC);
   if (!skb)
    PRINTR("ipt_ULOG: can't even allocate %ub\n",
           size);
  }
 }

 return skb;
}
