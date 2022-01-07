
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sock {TYPE_5__* sk_prot; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {TYPE_1__ sin_addr; } ;
struct TYPE_8__ {TYPE_2__ v4; } ;
struct TYPE_9__ {TYPE_3__ primary_addr; } ;
struct sctp_association {TYPE_4__ peer; } ;
struct inet_sock {int daddr; } ;
struct TYPE_10__ {scalar_t__ (* init ) (struct sock*) ;} ;


 int GFP_KERNEL ;
 int PF_INET ;
 int SOCK_ZAPPED ;
 struct inet_sock* inet_sk (struct sock*) ;
 int sctp_copy_sock (struct sock*,struct sock*,struct sctp_association*) ;
 struct sock* sk_alloc (int ,int ,int ,TYPE_5__*) ;
 int sk_common_release (struct sock*) ;
 int sk_refcnt_debug_inc (struct sock*) ;
 int sock_init_data (int *,struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;
 scalar_t__ stub1 (struct sock*) ;

__attribute__((used)) static struct sock *sctp_v4_create_accept_sk(struct sock *sk,
          struct sctp_association *asoc)
{
 struct sock *newsk = sk_alloc(sock_net(sk), PF_INET, GFP_KERNEL,
   sk->sk_prot);
 struct inet_sock *newinet;

 if (!newsk)
  goto out;

 sock_init_data(((void*)0), newsk);

 sctp_copy_sock(newsk, sk, asoc);
 sock_reset_flag(newsk, SOCK_ZAPPED);

 newinet = inet_sk(newsk);

 newinet->daddr = asoc->peer.primary_addr.v4.sin_addr.s_addr;

 sk_refcnt_debug_inc(newsk);

 if (newsk->sk_prot->init(newsk)) {
  sk_common_release(newsk);
  newsk = ((void*)0);
 }

out:
 return newsk;
}
