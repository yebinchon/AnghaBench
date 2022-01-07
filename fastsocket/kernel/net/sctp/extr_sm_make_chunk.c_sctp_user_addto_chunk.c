
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_chunk {int skb; int chunk_end; TYPE_1__* chunk_hdr; } ;
struct iovec {int dummy; } ;
typedef int __u8 ;
struct TYPE_2__ {int length; } ;


 int htons (scalar_t__) ;
 int memcpy_fromiovecend (int *,struct iovec*,int,int) ;
 scalar_t__ ntohs (int ) ;
 int * skb_put (int ,int) ;
 int skb_tail_pointer (int ) ;

int sctp_user_addto_chunk(struct sctp_chunk *chunk, int off, int len,
     struct iovec *data)
{
 __u8 *target;
 int err = 0;


 target = skb_put(chunk->skb, len);


 if ((err = memcpy_fromiovecend(target, data, off, len)))
  goto out;


 chunk->chunk_hdr->length =
  htons(ntohs(chunk->chunk_hdr->length) + len);
 chunk->chunk_end = skb_tail_pointer(chunk->skb);

out:
 return err;
}
