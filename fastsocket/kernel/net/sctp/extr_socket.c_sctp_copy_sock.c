
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_sndtimeo; int sk_rcvtimeo; int sk_lingertime; int sk_rcvbuf; int sk_sndbuf; TYPE_1__* sk_prot; int sk_backlog_rcv; int sk_protocol; int sk_family; int sk_destruct; int sk_shutdown; int sk_reuse; int sk_no_check; int sk_flags; int sk_bound_dev_if; int sk_type; } ;
struct TYPE_4__ {int port; } ;
struct sctp_association {int next_tsn; TYPE_2__ peer; } ;
struct inet_sock {int id; int mc_loop; int mc_ttl; int * mc_list; scalar_t__ mc_index; int uc_ttl; int pmtudisc; int dport; int rcv_saddr; int saddr; int sport; } ;
struct TYPE_3__ {int backlog_rcv; } ;


 int IPPROTO_SCTP ;
 int htons (int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int inet_sock_destruct ;
 int jiffies ;

void sctp_copy_sock(struct sock *newsk, struct sock *sk,
      struct sctp_association *asoc)
{
 struct inet_sock *inet = inet_sk(sk);
 struct inet_sock *newinet = inet_sk(newsk);

 newsk->sk_type = sk->sk_type;
 newsk->sk_bound_dev_if = sk->sk_bound_dev_if;
 newsk->sk_flags = sk->sk_flags;
 newsk->sk_no_check = sk->sk_no_check;
 newsk->sk_reuse = sk->sk_reuse;

 newsk->sk_shutdown = sk->sk_shutdown;
 newsk->sk_destruct = inet_sock_destruct;
 newsk->sk_family = sk->sk_family;
 newsk->sk_protocol = IPPROTO_SCTP;
 newsk->sk_backlog_rcv = sk->sk_prot->backlog_rcv;
 newsk->sk_sndbuf = sk->sk_sndbuf;
 newsk->sk_rcvbuf = sk->sk_rcvbuf;
 newsk->sk_lingertime = sk->sk_lingertime;
 newsk->sk_rcvtimeo = sk->sk_rcvtimeo;
 newsk->sk_sndtimeo = sk->sk_sndtimeo;

 newinet = inet_sk(newsk);




 newinet->sport = inet->sport;
 newinet->saddr = inet->saddr;
 newinet->rcv_saddr = inet->rcv_saddr;
 newinet->dport = htons(asoc->peer.port);
 newinet->pmtudisc = inet->pmtudisc;
 newinet->id = asoc->next_tsn ^ jiffies;

 newinet->uc_ttl = inet->uc_ttl;
 newinet->mc_loop = 1;
 newinet->mc_ttl = 1;
 newinet->mc_index = 0;
 newinet->mc_list = ((void*)0);
}
