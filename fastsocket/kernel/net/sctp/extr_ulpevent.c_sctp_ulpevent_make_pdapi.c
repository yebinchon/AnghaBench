
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_pdapi_event {int pdapi_length; int pdapi_assoc_id; int pdapi_indication; scalar_t__ pdapi_flags; int pdapi_type; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;
typedef int __u32 ;


 int MSG_NOTIFICATION ;
 int SCTP_PARTIAL_DELIVERY_EVENT ;
 int sctp_assoc2id (struct sctp_association const*) ;
 struct sk_buff* sctp_event2skb (struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpevent_new (int,int ,int ) ;
 int sctp_ulpevent_set_owner (struct sctp_ulpevent*,struct sctp_association const*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

struct sctp_ulpevent *sctp_ulpevent_make_pdapi(
 const struct sctp_association *asoc, __u32 indication,
 gfp_t gfp)
{
 struct sctp_ulpevent *event;
 struct sctp_pdapi_event *pd;
 struct sk_buff *skb;

 event = sctp_ulpevent_new(sizeof(struct sctp_pdapi_event),
      MSG_NOTIFICATION, gfp);
 if (!event)
  goto fail;

 skb = sctp_event2skb(event);
 pd = (struct sctp_pdapi_event *)
  skb_put(skb, sizeof(struct sctp_pdapi_event));







 pd->pdapi_type = SCTP_PARTIAL_DELIVERY_EVENT;
 pd->pdapi_flags = 0;







 pd->pdapi_length = sizeof(struct sctp_pdapi_event);





 pd->pdapi_indication = indication;





 sctp_ulpevent_set_owner(event, asoc);
 pd->pdapi_assoc_id = sctp_assoc2id(asoc);

 return event;
fail:
 return ((void*)0);
}
