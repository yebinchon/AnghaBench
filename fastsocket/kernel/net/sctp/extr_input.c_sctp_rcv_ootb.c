
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {void* data; } ;
struct TYPE_2__ {scalar_t__ type; int length; } ;
typedef TYPE_1__ sctp_chunkhdr_t ;
typedef int __u8 ;


 scalar_t__ SCTP_CID_ABORT ;
 scalar_t__ SCTP_CID_INIT ;
 scalar_t__ SCTP_CID_SHUTDOWN_COMPLETE ;
 int WORD_ROUND (int) ;
 int ntohs (int ) ;
 int * skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int sctp_rcv_ootb(struct sk_buff *skb)
{
 sctp_chunkhdr_t *ch;
 __u8 *ch_end;

 ch = (sctp_chunkhdr_t *) skb->data;


 do {

  if (ntohs(ch->length) < sizeof(sctp_chunkhdr_t))
   break;

  ch_end = ((__u8 *)ch) + WORD_ROUND(ntohs(ch->length));
  if (ch_end > skb_tail_pointer(skb))
   break;





  if (SCTP_CID_ABORT == ch->type)
   goto discard;





  if (SCTP_CID_SHUTDOWN_COMPLETE == ch->type)
   goto discard;






  if (SCTP_CID_INIT == ch->type && (void *)ch != skb->data)
   goto discard;

  ch = (sctp_chunkhdr_t *) ch_end;
 } while (ch_end < skb_tail_pointer(skb));

 return 0;

discard:
 return 1;
}
