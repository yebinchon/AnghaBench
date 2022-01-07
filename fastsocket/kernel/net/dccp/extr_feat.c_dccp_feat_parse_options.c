
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int sk_state; } ;
struct list_head {int dummy; } ;
struct dccp_sock {struct list_head dccps_featneg; } ;
struct dccp_request_sock {struct list_head dreq_featneg; } ;
 int dccp_feat_change_recv (struct list_head*,int ,int ,int ,int *,int ,int) ;
 int dccp_feat_confirm_recv (struct list_head*,int ,int ,int ,int *,int ,int) ;
 struct dccp_sock* dccp_sk (struct sock*) ;

int dccp_feat_parse_options(struct sock *sk, struct dccp_request_sock *dreq,
       u8 mandatory, u8 opt, u8 feat, u8 *val, u8 len)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct list_head *fn = dreq ? &dreq->dreq_featneg : &dp->dccps_featneg;
 bool server = 0;

 switch (sk->sk_state) {



 case 129:
  server = 1;
 case 128:
  switch (opt) {
  case 133:
  case 132:
   return dccp_feat_change_recv(fn, mandatory, opt, feat,
           val, len, server);
  case 130:
  case 131:
   return dccp_feat_confirm_recv(fn, mandatory, opt, feat,
            val, len, server);
  }
 }
 return 0;
}
