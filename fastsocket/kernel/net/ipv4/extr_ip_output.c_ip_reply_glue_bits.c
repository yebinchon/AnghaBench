
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int csum; } ;
typedef int __wsum ;


 int csum_block_add (int ,int ,int) ;
 int csum_partial_copy_nocheck (void*,char*,int,int ) ;

__attribute__((used)) static int ip_reply_glue_bits(void *dptr, char *to, int offset,
         int len, int odd, struct sk_buff *skb)
{
 __wsum csum;

 csum = csum_partial_copy_nocheck(dptr+offset, to, len, 0);
 skb->csum = csum_block_add(skb->csum, csum, odd);
 return 0;
}
