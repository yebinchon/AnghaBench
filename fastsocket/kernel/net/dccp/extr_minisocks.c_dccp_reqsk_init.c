
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct dccp_sock {int dccps_featneg; } ;
struct dccp_request_sock {int dreq_featneg; scalar_t__ dreq_timestamp_echo; } ;
struct TYPE_4__ {int dccph_dport; int dccph_sport; } ;
struct TYPE_3__ {scalar_t__ acked; int loc_port; int rmt_port; } ;


 int dccp_feat_clone_list (int *,int *) ;
 TYPE_2__* dccp_hdr (struct sk_buff const*) ;
 struct dccp_request_sock* dccp_rsk (struct request_sock*) ;
 TYPE_1__* inet_rsk (struct request_sock*) ;

int dccp_reqsk_init(struct request_sock *req,
      struct dccp_sock const *dp, struct sk_buff const *skb)
{
 struct dccp_request_sock *dreq = dccp_rsk(req);

 inet_rsk(req)->rmt_port = dccp_hdr(skb)->dccph_sport;
 inet_rsk(req)->loc_port = dccp_hdr(skb)->dccph_dport;
 inet_rsk(req)->acked = 0;
 dreq->dreq_timestamp_echo = 0;


 return dccp_feat_clone_list(&dp->dccps_featneg, &dreq->dreq_featneg);
}
