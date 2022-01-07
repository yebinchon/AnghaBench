
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcp_splice_state {int flags; int pipe; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {struct tcp_splice_state* data; } ;
struct TYPE_5__ {int count; TYPE_1__ arg; } ;
typedef TYPE_2__ read_descriptor_t ;


 int min (int,size_t) ;
 int skb_splice_bits (struct sk_buff*,unsigned int,int ,int ,int ) ;

__attribute__((used)) static int tcp_splice_data_recv(read_descriptor_t *rd_desc, struct sk_buff *skb,
    unsigned int offset, size_t len)
{
 struct tcp_splice_state *tss = rd_desc->arg.data;
 int ret;

 ret = skb_splice_bits(skb, offset, tss->pipe, min(rd_desc->count, len),
         tss->flags);
 if (ret > 0)
  rd_desc->count -= ret;
 return ret;
}
