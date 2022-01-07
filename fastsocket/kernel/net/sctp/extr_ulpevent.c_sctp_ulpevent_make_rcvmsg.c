
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {size_t data; int len; } ;
struct sctp_ulpevent {int msg_flags; int iif; int tsn; int cumtsn; int flags; int ppid; void* ssn; void* stream; } ;
struct TYPE_13__ {TYPE_4__* data_hdr; } ;
struct sctp_chunk {size_t chunk_end; TYPE_6__* chunk_hdr; TYPE_5__ subh; int transport; TYPE_7__* skb; } ;
struct TYPE_11__ {int tsn_map; } ;
struct TYPE_10__ {TYPE_8__* sk; } ;
struct sctp_association {TYPE_3__ peer; TYPE_2__ base; int rmem_alloc; TYPE_1__* ep; } ;
typedef int gfp_t ;
struct TYPE_16__ {int sk_rcvbuf; int sk_userlocks; int sk_rmem_alloc; } ;
struct TYPE_15__ {int truesize; } ;
struct TYPE_14__ {int flags; int length; } ;
struct TYPE_12__ {int tsn; int ppid; int ssn; int stream; } ;
struct TYPE_9__ {scalar_t__ rcvbuf_policy; } ;


 int SCTP_DATA_UNORDERED ;
 int SCTP_UNORDERED ;
 int SOCK_RCVBUF_LOCK ;
 size_t WORD_ROUND (size_t) ;
 int atomic_read (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohl (int ) ;
 void* ntohs (int ) ;
 int sctp_chunk_iif (struct sctp_chunk*) ;
 struct sctp_ulpevent* sctp_skb2event (struct sk_buff*) ;
 int sctp_tsnmap_get_ctsn (int *) ;
 scalar_t__ sctp_tsnmap_mark (int *,int ,int ) ;
 int sctp_ulpevent_init (struct sctp_ulpevent*,int ,int) ;
 int sctp_ulpevent_receive_data (struct sctp_ulpevent*,struct sctp_association*) ;
 int sk_rmem_schedule (TYPE_8__*,int ) ;
 struct sk_buff* skb_clone (TYPE_7__*,int ) ;
 int skb_trim (struct sk_buff*,size_t) ;

struct sctp_ulpevent *sctp_ulpevent_make_rcvmsg(struct sctp_association *asoc,
      struct sctp_chunk *chunk,
      gfp_t gfp)
{
 struct sctp_ulpevent *event = ((void*)0);
 struct sk_buff *skb;
 size_t padding, len;
 int rx_count;






 if (asoc->ep->rcvbuf_policy)
  rx_count = atomic_read(&asoc->rmem_alloc);
 else
  rx_count = atomic_read(&asoc->base.sk->sk_rmem_alloc);

 if (rx_count >= asoc->base.sk->sk_rcvbuf) {

  if ((asoc->base.sk->sk_userlocks & SOCK_RCVBUF_LOCK) ||
      (!sk_rmem_schedule(asoc->base.sk, chunk->skb->truesize)))
   goto fail;
 }


 skb = skb_clone(chunk->skb, gfp);
 if (!skb)
  goto fail;




 if (sctp_tsnmap_mark(&asoc->peer.tsn_map,
        ntohl(chunk->subh.data_hdr->tsn),
        chunk->transport))
  goto fail_mark;
 len = ntohs(chunk->chunk_hdr->length);
 padding = WORD_ROUND(len) - len;


 skb_trim(skb, chunk->chunk_end - padding - skb->data);


 event = sctp_skb2event(skb);





 sctp_ulpevent_init(event, 0, skb->len + sizeof(struct sk_buff));

 sctp_ulpevent_receive_data(event, asoc);

 event->stream = ntohs(chunk->subh.data_hdr->stream);
 event->ssn = ntohs(chunk->subh.data_hdr->ssn);
 event->ppid = chunk->subh.data_hdr->ppid;
 if (chunk->chunk_hdr->flags & SCTP_DATA_UNORDERED) {
  event->flags |= SCTP_UNORDERED;
  event->cumtsn = sctp_tsnmap_get_ctsn(&asoc->peer.tsn_map);
 }
 event->tsn = ntohl(chunk->subh.data_hdr->tsn);
 event->msg_flags |= chunk->chunk_hdr->flags;
 event->iif = sctp_chunk_iif(chunk);

 return event;

fail_mark:
 kfree_skb(skb);
fail:
 return ((void*)0);
}
