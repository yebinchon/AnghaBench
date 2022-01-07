
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_chunk {int skb; int chunk_end; TYPE_1__* chunk_hdr; } ;
struct TYPE_2__ {int length; } ;


 int WORD_ROUND (int) ;
 int htons (int) ;
 int memcpy (void*,void const*,int) ;
 int memset (void*,int ,int) ;
 int ntohs (int ) ;
 void* skb_put (int ,int) ;
 int skb_tail_pointer (int ) ;

void *sctp_addto_chunk(struct sctp_chunk *chunk, int len, const void *data)
{
 void *target;
 void *padding;
 int chunklen = ntohs(chunk->chunk_hdr->length);
 int padlen = WORD_ROUND(chunklen) - chunklen;

 padding = skb_put(chunk->skb, padlen);
 target = skb_put(chunk->skb, len);

 memset(padding, 0, padlen);
 memcpy(target, data, len);


 chunk->chunk_hdr->length = htons(chunklen + padlen + len);
 chunk->chunk_end = skb_tail_pointer(chunk->skb);

 return target;
}
