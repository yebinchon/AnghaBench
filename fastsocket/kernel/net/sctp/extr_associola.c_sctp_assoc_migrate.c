
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_ack_backlog; } ;
struct sctp_sock {int ep; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {TYPE_1__ base; int ep; int asocs; } ;


 int TCP ;
 int list_del_init (int *) ;
 int sctp_endpoint_add_asoc (int ,struct sctp_association*) ;
 int sctp_endpoint_hold (int ) ;
 int sctp_endpoint_put (int ) ;
 struct sctp_sock* sctp_sk (struct sock*) ;
 scalar_t__ sctp_style (struct sock*,int ) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

void sctp_assoc_migrate(struct sctp_association *assoc, struct sock *newsk)
{
 struct sctp_sock *newsp = sctp_sk(newsk);
 struct sock *oldsk = assoc->base.sk;




 list_del_init(&assoc->asocs);


 if (sctp_style(oldsk, TCP))
  oldsk->sk_ack_backlog--;


 sctp_endpoint_put(assoc->ep);
 sock_put(assoc->base.sk);


 assoc->ep = newsp->ep;
 sctp_endpoint_hold(assoc->ep);


 assoc->base.sk = newsk;
 sock_hold(assoc->base.sk);


 sctp_endpoint_add_asoc(newsp->ep, assoc);
}
