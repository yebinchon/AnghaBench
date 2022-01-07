
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int truesize; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_chunk {TYPE_1__* chunk_hdr; int skb; } ;
struct sctp_association {int dummy; } ;
struct sctp_assoc_change {int sac_assoc_id; void* sac_inbound_streams; void* sac_outbound_streams; void* sac_error; int sac_length; scalar_t__ sac_flags; void* sac_state; int sac_type; } ;
typedef int sctp_chunkhdr_t ;
typedef int gfp_t ;
typedef void* __u16 ;
struct TYPE_2__ {int length; } ;


 int MSG_NOTIFICATION ;
 int SCTP_ASSOC_CHANGE ;
 scalar_t__ ntohs (int ) ;
 int sctp_assoc2id (struct sctp_association const*) ;
 struct sk_buff* sctp_event2skb (struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_skb2event (struct sk_buff*) ;
 int sctp_ulpevent_init (struct sctp_ulpevent*,int ,int ) ;
 struct sctp_ulpevent* sctp_ulpevent_new (int,int ,int ) ;
 int sctp_ulpevent_set_owner (struct sctp_ulpevent*,struct sctp_association const*) ;
 struct sk_buff* skb_copy_expand (int ,int,int ,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;

struct sctp_ulpevent *sctp_ulpevent_make_assoc_change(
 const struct sctp_association *asoc,
 __u16 flags, __u16 state, __u16 error, __u16 outbound,
 __u16 inbound, struct sctp_chunk *chunk, gfp_t gfp)
{
 struct sctp_ulpevent *event;
 struct sctp_assoc_change *sac;
 struct sk_buff *skb;




 if (chunk) {



  skb = skb_copy_expand(chunk->skb,
          sizeof(struct sctp_assoc_change), 0, gfp);

  if (!skb)
   goto fail;


  event = sctp_skb2event(skb);
  sctp_ulpevent_init(event, MSG_NOTIFICATION, skb->truesize);


  sac = (struct sctp_assoc_change *)
   skb_push(skb, sizeof(struct sctp_assoc_change));


  skb_trim(skb, sizeof(struct sctp_assoc_change) +
    ntohs(chunk->chunk_hdr->length) -
    sizeof(sctp_chunkhdr_t));
 } else {
  event = sctp_ulpevent_new(sizeof(struct sctp_assoc_change),
      MSG_NOTIFICATION, gfp);
  if (!event)
   goto fail;

  skb = sctp_event2skb(event);
  sac = (struct sctp_assoc_change *) skb_put(skb,
     sizeof(struct sctp_assoc_change));
 }







 sac->sac_type = SCTP_ASSOC_CHANGE;
 sac->sac_state = state;







 sac->sac_flags = 0;
 sac->sac_length = skb->len;
 sac->sac_error = error;
 sac->sac_outbound_streams = outbound;
 sac->sac_inbound_streams = inbound;
 sctp_ulpevent_set_owner(event, asoc);
 sac->sac_assoc_id = sctp_assoc2id(asoc);

 return event;

fail:
 return ((void*)0);
}
