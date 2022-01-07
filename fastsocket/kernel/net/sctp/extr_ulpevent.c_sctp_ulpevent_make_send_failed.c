
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int truesize; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_sndrcvinfo {int dummy; } ;
struct TYPE_4__ {int sinfo_flags; } ;
struct sctp_send_failed {int ssf_length; int ssf_assoc_id; TYPE_2__ ssf_info; int ssf_error; int ssf_flags; int ssf_type; } ;
struct sctp_data_chunk {int dummy; } ;
struct sctp_chunk {TYPE_1__* chunk_hdr; int sinfo; int skb; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_3__ {int flags; int length; } ;


 int MSG_NOTIFICATION ;
 int SCTP_SEND_FAILED ;
 int memcpy (TYPE_2__*,int *,int) ;
 int ntohs (int ) ;
 int sctp_assoc2id (struct sctp_association const*) ;
 struct sctp_ulpevent* sctp_skb2event (struct sk_buff*) ;
 int sctp_ulpevent_init (struct sctp_ulpevent*,int ,int ) ;
 int sctp_ulpevent_set_owner (struct sctp_ulpevent*,struct sctp_association const*) ;
 struct sk_buff* skb_copy_expand (int ,int,int ,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;

struct sctp_ulpevent *sctp_ulpevent_make_send_failed(
 const struct sctp_association *asoc, struct sctp_chunk *chunk,
 __u16 flags, __u32 error, gfp_t gfp)
{
 struct sctp_ulpevent *event;
 struct sctp_send_failed *ssf;
 struct sk_buff *skb;


 int len = ntohs(chunk->chunk_hdr->length);


 skb = skb_copy_expand(chunk->skb,
         sizeof(struct sctp_send_failed),
         0,
         gfp);
 if (!skb)
  goto fail;


 skb_pull(skb, sizeof(struct sctp_data_chunk));
 len -= sizeof(struct sctp_data_chunk);


 event = sctp_skb2event(skb);
 sctp_ulpevent_init(event, MSG_NOTIFICATION, skb->truesize);

 ssf = (struct sctp_send_failed *)
  skb_push(skb, sizeof(struct sctp_send_failed));







 ssf->ssf_type = SCTP_SEND_FAILED;
 ssf->ssf_flags = flags;
 ssf->ssf_length = sizeof(struct sctp_send_failed) + len;
 skb_trim(skb, ssf->ssf_length);
 ssf->ssf_error = error;
 memcpy(&ssf->ssf_info, &chunk->sinfo, sizeof(struct sctp_sndrcvinfo));




 ssf->ssf_info.sinfo_flags = chunk->chunk_hdr->flags;
 sctp_ulpevent_set_owner(event, asoc);
 ssf->ssf_assoc_id = sctp_assoc2id(asoc);
 return event;

fail:
 return ((void*)0);
}
