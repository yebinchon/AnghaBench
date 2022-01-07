
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_skb_reader {size_t count; unsigned int offset; int csum; int skb; } ;
typedef int __wsum ;


 int csum_block_add (int ,int ,unsigned int) ;
 int skb_copy_and_csum_bits (int ,unsigned int,void*,size_t,int ) ;

__attribute__((used)) static size_t xdr_skb_read_and_csum_bits(struct xdr_skb_reader *desc, void *to, size_t len)
{
 unsigned int pos;
 __wsum csum2;

 if (len > desc->count)
  len = desc->count;
 pos = desc->offset;
 csum2 = skb_copy_and_csum_bits(desc->skb, pos, to, len, 0);
 desc->csum = csum_block_add(desc->csum, csum2, pos);
 desc->count -= len;
 desc->offset += len;
 return len;
}
