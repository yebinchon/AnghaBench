
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_inq {struct sctp_chunk* in_progress; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {scalar_t__ chunk_end; scalar_t__ pdiscard; scalar_t__ end_of_packet; scalar_t__ singleton; } ;
typedef struct sctp_chunkhdr sctp_chunkhdr_t ;



struct sctp_chunkhdr *sctp_inq_peek(struct sctp_inq *queue)
{
 struct sctp_chunk *chunk;
 sctp_chunkhdr_t *ch = ((void*)0);

 chunk = queue->in_progress;

 if (chunk->singleton ||
     chunk->end_of_packet ||
     chunk->pdiscard)
      return ((void*)0);

 ch = (sctp_chunkhdr_t *)chunk->chunk_end;

 return ch;
}
