
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sctp_ulpevent {struct sctp_association* asoc; int rmem_len; } ;
struct TYPE_2__ {int sk; } ;
struct sctp_association {TYPE_1__ base; int rmem_alloc; } ;


 int atomic_add (int ,int *) ;
 int sctp_association_hold (struct sctp_association*) ;
 struct sk_buff* sctp_event2skb (struct sctp_ulpevent*) ;
 int sctp_skb_set_owner_r (struct sk_buff*,int ) ;

__attribute__((used)) static inline void sctp_ulpevent_set_owner(struct sctp_ulpevent *event,
        const struct sctp_association *asoc)
{
 struct sk_buff *skb;




 sctp_association_hold((struct sctp_association *)asoc);
 skb = sctp_event2skb(event);
 event->asoc = (struct sctp_association *)asoc;
 atomic_add(event->rmem_len, &event->asoc->rmem_alloc);
 sctp_skb_set_owner_r(skb, asoc->base.sk);
}
