
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; int truesize; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_remote_error {int sre_assoc_id; int sre_error; int sre_length; scalar_t__ sre_flags; int sre_type; } ;
struct sctp_chunk {TYPE_2__* skb; } ;
struct sctp_association {int dummy; } ;
struct TYPE_4__ {int length; int cause; } ;
typedef TYPE_1__ sctp_errhdr_t ;
typedef int gfp_t ;
typedef int __u16 ;
typedef int __be16 ;
struct TYPE_5__ {scalar_t__ data; } ;


 int MSG_NOTIFICATION ;
 int SCTP_REMOTE_ERROR ;
 int WORD_ROUND (int ) ;
 int ntohs (int ) ;
 int sctp_assoc2id (struct sctp_association const*) ;
 struct sctp_ulpevent* sctp_skb2event (struct sk_buff*) ;
 int sctp_ulpevent_init (struct sctp_ulpevent*,int ,int ) ;
 int sctp_ulpevent_set_owner (struct sctp_ulpevent*,struct sctp_association const*) ;
 struct sk_buff* skb_copy_expand (TYPE_2__*,int,int ,int ) ;
 int skb_pull (TYPE_2__*,int) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;

struct sctp_ulpevent *sctp_ulpevent_make_remote_error(
 const struct sctp_association *asoc, struct sctp_chunk *chunk,
 __u16 flags, gfp_t gfp)
{
 struct sctp_ulpevent *event;
 struct sctp_remote_error *sre;
 struct sk_buff *skb;
 sctp_errhdr_t *ch;
 __be16 cause;
 int elen;

 ch = (sctp_errhdr_t *)(chunk->skb->data);
 cause = ch->cause;
 elen = WORD_ROUND(ntohs(ch->length)) - sizeof(sctp_errhdr_t);


 skb_pull(chunk->skb, sizeof(sctp_errhdr_t));




 skb = skb_copy_expand(chunk->skb, sizeof(struct sctp_remote_error),
         0, gfp);


 skb_pull(chunk->skb, elen);
 if (!skb)
  goto fail;


 event = sctp_skb2event(skb);
 sctp_ulpevent_init(event, MSG_NOTIFICATION, skb->truesize);

 sre = (struct sctp_remote_error *)
  skb_push(skb, sizeof(struct sctp_remote_error));


 skb_trim(skb, sizeof(struct sctp_remote_error) + elen);







 sre->sre_type = SCTP_REMOTE_ERROR;
 sre->sre_flags = 0;
 sre->sre_length = skb->len;
 sre->sre_error = cause;
 sctp_ulpevent_set_owner(event, asoc);
 sre->sre_assoc_id = sctp_assoc2id(asoc);

 return event;

fail:
 return ((void*)0);
}
