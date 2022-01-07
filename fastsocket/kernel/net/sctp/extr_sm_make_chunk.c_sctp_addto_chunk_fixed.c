
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int skb; } ;


 void* sctp_addto_chunk (struct sctp_chunk*,int,void const*) ;
 int skb_tailroom (int ) ;

void *sctp_addto_chunk_fixed(struct sctp_chunk *chunk,
        int len, const void *data)
{
 if (skb_tailroom(chunk->skb) >= len)
  return sctp_addto_chunk(chunk, len, data);
 else
  return ((void*)0);
}
