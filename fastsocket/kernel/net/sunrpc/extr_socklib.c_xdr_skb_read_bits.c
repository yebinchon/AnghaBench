
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_skb_reader {size_t count; size_t offset; int skb; } ;


 int skb_copy_bits (int ,size_t,void*,size_t) ;
 scalar_t__ unlikely (int ) ;

size_t xdr_skb_read_bits(struct xdr_skb_reader *desc, void *to, size_t len)
{
 if (len > desc->count)
  len = desc->count;
 if (unlikely(skb_copy_bits(desc->skb, desc->offset, to, len)))
  return 0;
 desc->count -= len;
 desc->offset += len;
 return len;
}
