
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_skb_reader {int offset; scalar_t__ count; struct sk_buff* skb; } ;
struct xdr_buf {int dummy; } ;
struct sk_buff {int len; } ;
typedef int rpc_fraghdr ;


 scalar_t__ xdr_partial_copy_from_skb (struct xdr_buf*,int ,struct xdr_skb_reader*,int ) ;
 int xdr_skb_read_bits ;

__attribute__((used)) static int xs_local_copy_to_xdr(struct xdr_buf *xdr, struct sk_buff *skb)
{
 struct xdr_skb_reader desc = {
  .skb = skb,
  .offset = sizeof(rpc_fraghdr),
  .count = skb->len - sizeof(rpc_fraghdr),
 };

 if (xdr_partial_copy_from_skb(xdr, 0, &desc, xdr_skb_read_bits) < 0)
  return -1;
 if (desc.count)
  return -1;
 return 0;
}
