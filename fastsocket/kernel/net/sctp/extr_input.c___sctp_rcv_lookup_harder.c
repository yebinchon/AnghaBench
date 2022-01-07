
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct sctp_transport {int dummy; } ;
struct sctp_association {int dummy; } ;
struct TYPE_2__ {int type; int length; } ;
typedef TYPE_1__ sctp_chunkhdr_t ;




 scalar_t__ WORD_ROUND (int ) ;
 struct sctp_association* __sctp_rcv_init_lookup (struct sk_buff*,union sctp_addr const*,struct sctp_transport**) ;
 struct sctp_association* __sctp_rcv_walk_lookup (struct sk_buff*,union sctp_addr const*,struct sctp_transport**) ;
 int ntohs (int ) ;

__attribute__((used)) static struct sctp_association *__sctp_rcv_lookup_harder(struct sk_buff *skb,
          const union sctp_addr *laddr,
          struct sctp_transport **transportp)
{
 sctp_chunkhdr_t *ch;

 ch = (sctp_chunkhdr_t *) skb->data;






 if (WORD_ROUND(ntohs(ch->length)) > skb->len)
  return ((void*)0);


 switch (ch->type) {
 case 129:
 case 128:
  return __sctp_rcv_init_lookup(skb, laddr, transportp);
  break;

 default:
  return __sctp_rcv_walk_lookup(skb, laddr, transportp);
  break;
 }


 return ((void*)0);
}
