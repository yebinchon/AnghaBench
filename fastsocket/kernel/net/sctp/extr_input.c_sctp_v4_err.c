
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_err; int sk_err_soft; int (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {int const len; void* transport_header; void* network_header; scalar_t__ data; } ;
struct sctp_transport {int dummy; } ;
struct sctp_association {int dummy; } ;
struct iphdr {int ihl; } ;
struct inet_sock {scalar_t__ recverr; } ;
typedef void* sk_buff_data_t ;
typedef int __u32 ;
struct TYPE_4__ {int errno; } ;
struct TYPE_3__ {int type; int code; } ;


 int AF_INET ;
 int EHOSTUNREACH ;
 int EPROTO ;

 int const ICMP_EXC_FRAGTIME ;
 int const ICMP_FRAG_NEEDED ;
 int ICMP_INC_STATS_BH (int *,int ) ;
 int ICMP_MIB_INERRORS ;

 int const ICMP_PROT_UNREACH ;

 int const NR_ICMP_UNREACH ;
 TYPE_2__* icmp_err_convert ;
 TYPE_1__* icmp_hdr (struct sk_buff*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int init_net ;
 int sctp_err_finish (struct sock*,struct sctp_association*) ;
 struct sock* sctp_err_lookup (int ,struct sk_buff*,int ,struct sctp_association**,struct sctp_transport**) ;
 int sctp_hdr (struct sk_buff*) ;
 int sctp_icmp_frag_needed (struct sock*,struct sctp_association*,struct sctp_transport*,int ) ;
 int sctp_icmp_proto_unreachable (struct sock*,struct sctp_association*,struct sctp_transport*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_set_transport_header (struct sk_buff*,int const) ;
 int sock_owned_by_user (struct sock*) ;
 int stub1 (struct sock*) ;

void sctp_v4_err(struct sk_buff *skb, __u32 info)
{
 struct iphdr *iph = (struct iphdr *)skb->data;
 const int ihlen = iph->ihl * 4;
 const int type = icmp_hdr(skb)->type;
 const int code = icmp_hdr(skb)->code;
 struct sock *sk;
 struct sctp_association *asoc = ((void*)0);
 struct sctp_transport *transport;
 struct inet_sock *inet;
 sk_buff_data_t saveip, savesctp;
 int err;

 if (skb->len < ihlen + 8) {
  ICMP_INC_STATS_BH(&init_net, ICMP_MIB_INERRORS);
  return;
 }


 saveip = skb->network_header;
 savesctp = skb->transport_header;
 skb_reset_network_header(skb);
 skb_set_transport_header(skb, ihlen);
 sk = sctp_err_lookup(AF_INET, skb, sctp_hdr(skb), &asoc, &transport);

 skb->network_header = saveip;
 skb->transport_header = savesctp;
 if (!sk) {
  ICMP_INC_STATS_BH(&init_net, ICMP_MIB_INERRORS);
  return;
 }




 switch (type) {
 case 129:
  err = EPROTO;
  break;
 case 130:
  if (code > NR_ICMP_UNREACH)
   goto out_unlock;


  if (ICMP_FRAG_NEEDED == code) {
   sctp_icmp_frag_needed(sk, asoc, transport, info);
   goto out_unlock;
  }
  else {
   if (ICMP_PROT_UNREACH == code) {
    sctp_icmp_proto_unreachable(sk, asoc,
           transport);
    goto out_unlock;
   }
  }
  err = icmp_err_convert[code].errno;
  break;
 case 128:



  if (ICMP_EXC_FRAGTIME == code)
   goto out_unlock;

  err = EHOSTUNREACH;
  break;
 default:
  goto out_unlock;
 }

 inet = inet_sk(sk);
 if (!sock_owned_by_user(sk) && inet->recverr) {
  sk->sk_err = err;
  sk->sk_error_report(sk);
 } else {
  sk->sk_err_soft = err;
 }

out_unlock:
 sctp_err_finish(sk, asoc);
}
