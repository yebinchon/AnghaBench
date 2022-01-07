
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sctp_ulpq {struct sctp_association* asoc; } ;
struct TYPE_9__ {TYPE_2__* data_hdr; } ;
struct sctp_chunk {int transport; TYPE_3__ subh; TYPE_1__* chunk_hdr; } ;
struct TYPE_11__ {TYPE_6__* sk; } ;
struct TYPE_10__ {int tsn_map; } ;
struct sctp_association {TYPE_5__ base; TYPE_4__ peer; } ;
typedef int sctp_data_chunk_t ;
typedef int gfp_t ;
typedef int __u32 ;
typedef scalar_t__ __u16 ;
struct TYPE_12__ {int sk_receive_queue; } ;
struct TYPE_8__ {int tsn; } ;
struct TYPE_7__ {int length; } ;


 scalar_t__ SCTP_DEFAULT_MAXWINDOW ;
 int ntohl (int ) ;
 scalar_t__ ntohs (int ) ;
 int sctp_tsnmap_mark (int *,int ,int ) ;
 int sctp_ulpq_partial_delivery (struct sctp_ulpq*,struct sctp_chunk*,int ) ;
 scalar_t__ sctp_ulpq_renege_frags (struct sctp_ulpq*,scalar_t__) ;
 scalar_t__ sctp_ulpq_renege_order (struct sctp_ulpq*,scalar_t__) ;
 int sctp_ulpq_tail_data (struct sctp_ulpq*,struct sctp_chunk*,int ) ;
 int sk_mem_reclaim (TYPE_6__*) ;
 scalar_t__ skb_queue_empty (int *) ;

void sctp_ulpq_renege(struct sctp_ulpq *ulpq, struct sctp_chunk *chunk,
        gfp_t gfp)
{
 struct sctp_association *asoc;
 __u16 needed, freed;

 asoc = ulpq->asoc;

 if (chunk) {
  needed = ntohs(chunk->chunk_hdr->length);
  needed -= sizeof(sctp_data_chunk_t);
 } else
  needed = SCTP_DEFAULT_MAXWINDOW;

 freed = 0;

 if (skb_queue_empty(&asoc->base.sk->sk_receive_queue)) {
  freed = sctp_ulpq_renege_order(ulpq, needed);
  if (freed < needed) {
   freed += sctp_ulpq_renege_frags(ulpq, needed - freed);
  }
 }

 if (chunk && (freed >= needed)) {
  __u32 tsn;
  tsn = ntohl(chunk->subh.data_hdr->tsn);
  sctp_tsnmap_mark(&asoc->peer.tsn_map, tsn, chunk->transport);
  sctp_ulpq_tail_data(ulpq, chunk, gfp);

  sctp_ulpq_partial_delivery(ulpq, chunk, gfp);
 }

 sk_mem_reclaim(asoc->base.sk);
 return;
}
