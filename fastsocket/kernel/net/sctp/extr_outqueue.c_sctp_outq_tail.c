
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_outq {int cork; int control_chunk_list; int empty; TYPE_1__* asoc; } ;
struct sctp_chunk {int list; TYPE_2__* chunk_hdr; } ;
struct TYPE_4__ {scalar_t__ type; int flags; } ;
struct TYPE_3__ {int state; } ;


 int ESHUTDOWN ;
 scalar_t__ SCTP_CID_DATA ;
 int SCTP_DATA_UNORDERED ;
 int SCTP_DEBUG_PRINTK (char*,struct sctp_outq*,struct sctp_chunk*,char*) ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_OUTCTRLCHUNKS ;
 int SCTP_MIB_OUTORDERCHUNKS ;
 int SCTP_MIB_OUTUNORDERCHUNKS ;






 int SCTP_ST_CHUNK (scalar_t__) ;
 int list_add_tail (int *,int *) ;
 char* sctp_cname (int ) ;
 int sctp_outq_flush (struct sctp_outq*,int ) ;
 int sctp_outq_tail_data (struct sctp_outq*,struct sctp_chunk*) ;

int sctp_outq_tail(struct sctp_outq *q, struct sctp_chunk *chunk)
{
 int error = 0;

 SCTP_DEBUG_PRINTK("sctp_outq_tail(%p, %p[%s])\n",
     q, chunk, chunk && chunk->chunk_hdr ?
     sctp_cname(SCTP_ST_CHUNK(chunk->chunk_hdr->type))
     : "Illegal Chunk");




 if (SCTP_CID_DATA == chunk->chunk_hdr->type) {
  switch (q->asoc->state) {
  case 132:
  case 133:
  case 130:
  case 128:
  case 129:
  case 131:

   error = -ESHUTDOWN;
   break;

  default:
   SCTP_DEBUG_PRINTK("outqueueing (%p, %p[%s])\n",
     q, chunk, chunk && chunk->chunk_hdr ?
     sctp_cname(SCTP_ST_CHUNK(chunk->chunk_hdr->type))
     : "Illegal Chunk");

   sctp_outq_tail_data(q, chunk);
   if (chunk->chunk_hdr->flags & SCTP_DATA_UNORDERED)
    SCTP_INC_STATS(SCTP_MIB_OUTUNORDERCHUNKS);
   else
    SCTP_INC_STATS(SCTP_MIB_OUTORDERCHUNKS);
   q->empty = 0;
   break;
  }
 } else {
  list_add_tail(&chunk->list, &q->control_chunk_list);
  SCTP_INC_STATS(SCTP_MIB_OUTCTRLCHUNKS);
 }

 if (error < 0)
  return error;

 if (!q->cork)
  error = sctp_outq_flush(q, 0);

 return error;
}
