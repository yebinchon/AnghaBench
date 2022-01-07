
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_9__ {int count; int * item; } ;
struct TYPE_8__ {int choice; int progress; int facility; int alerting; int connect; int callProceeding; int setup; } ;
struct TYPE_11__ {int options; TYPE_3__ h245Control; TYPE_2__ h323_message_body; } ;
struct TYPE_7__ {TYPE_5__ h323_uu_pdu; } ;
struct TYPE_10__ {TYPE_1__ UUIE; } ;
typedef TYPE_4__ Q931 ;
typedef TYPE_5__ H323_UU_PDU ;


 int eH323_UU_PDU_h245Control ;






 int pr_debug (char*,int) ;
 int process_alerting (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int *) ;
 int process_callproceeding (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int *) ;
 int process_connect (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int *) ;
 int process_facility (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int *) ;
 int process_h245 (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int *) ;
 int process_progress (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int *) ;
 int process_setup (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int *) ;

__attribute__((used)) static int process_q931(struct sk_buff *skb, struct nf_conn *ct,
   enum ip_conntrack_info ctinfo,
   unsigned char **data, int dataoff, Q931 *q931)
{
 H323_UU_PDU *pdu = &q931->UUIE.h323_uu_pdu;
 int i;
 int ret = 0;

 switch (pdu->h323_message_body.choice) {
 case 128:
  ret = process_setup(skb, ct, ctinfo, data, dataoff,
        &pdu->h323_message_body.setup);
  break;
 case 132:
  ret = process_callproceeding(skb, ct, ctinfo, data, dataoff,
          &pdu->h323_message_body.
          callProceeding);
  break;
 case 131:
  ret = process_connect(skb, ct, ctinfo, data, dataoff,
          &pdu->h323_message_body.connect);
  break;
 case 133:
  ret = process_alerting(skb, ct, ctinfo, data, dataoff,
           &pdu->h323_message_body.alerting);
  break;
 case 130:
  ret = process_facility(skb, ct, ctinfo, data, dataoff,
           &pdu->h323_message_body.facility);
  break;
 case 129:
  ret = process_progress(skb, ct, ctinfo, data, dataoff,
           &pdu->h323_message_body.progress);
  break;
 default:
  pr_debug("nf_ct_q931: Q.931 signal %d\n",
    pdu->h323_message_body.choice);
  break;
 }

 if (ret < 0)
  return -1;

 if (pdu->options & eH323_UU_PDU_h245Control) {
  for (i = 0; i < pdu->h245Control.count; i++) {
   ret = process_h245(skb, ct, ctinfo, data, dataoff,
        &pdu->h245Control.item[i]);
   if (ret < 0)
    return -1;
  }
 }

 return 0;
}
