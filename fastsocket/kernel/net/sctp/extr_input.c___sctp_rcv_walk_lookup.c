
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sk_buff {scalar_t__ data; } ;
struct sctp_transport {int dummy; } ;
struct sctp_association {int dummy; } ;
struct TYPE_4__ {int type; int length; } ;
typedef TYPE_1__ sctp_chunkhdr_t ;
typedef int __u8 ;
struct TYPE_5__ {int source; } ;





 int WORD_ROUND (int) ;
 struct sctp_association* __sctp_rcv_asconf_lookup (TYPE_1__*,union sctp_addr const*,int ,struct sctp_transport**) ;
 int ntohs (int ) ;
 int sctp_addip_noauth ;
 TYPE_2__* sctp_hdr (struct sk_buff*) ;
 int * skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static struct sctp_association *__sctp_rcv_walk_lookup(struct sk_buff *skb,
          const union sctp_addr *laddr,
          struct sctp_transport **transportp)
{
 struct sctp_association *asoc = ((void*)0);
 sctp_chunkhdr_t *ch;
 int have_auth = 0;
 unsigned int chunk_num = 1;
 __u8 *ch_end;




 ch = (sctp_chunkhdr_t *) skb->data;
 do {

  if (ntohs(ch->length) < sizeof(sctp_chunkhdr_t))
   break;

  ch_end = ((__u8 *)ch) + WORD_ROUND(ntohs(ch->length));
  if (ch_end > skb_tail_pointer(skb))
   break;

  switch(ch->type) {
      case 129:
       have_auth = chunk_num;
       break;

      case 128:







       if (have_auth == 1 && chunk_num == 2)
        return ((void*)0);
       break;

      case 130:
       if (have_auth || sctp_addip_noauth)
        asoc = __sctp_rcv_asconf_lookup(ch, laddr,
       sctp_hdr(skb)->source,
       transportp);
      default:
       break;
  }

  if (asoc)
   break;

  ch = (sctp_chunkhdr_t *) ch_end;
  chunk_num++;
 } while (ch_end < skb_tail_pointer(skb));

 return asoc;
}
