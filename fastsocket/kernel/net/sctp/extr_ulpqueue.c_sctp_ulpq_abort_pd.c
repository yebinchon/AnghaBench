
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int (* sk_data_ready ) (struct sock*,int ) ;int sk_receive_queue; } ;
struct sctp_ulpq {TYPE_2__* asoc; int pd_mode; } ;
struct sctp_ulpevent {int dummy; } ;
typedef int gfp_t ;
struct TYPE_6__ {int subscribe; } ;
struct TYPE_4__ {struct sock* sk; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 int SCTP_PARTIAL_DELIVERY_ABORTED ;
 int SCTP_PARTIAL_DELIVERY_EVENT ;
 int __skb_queue_tail (int *,int ) ;
 int sctp_event2skb (struct sctp_ulpevent*) ;
 TYPE_3__* sctp_sk (struct sock*) ;
 struct sctp_ulpevent* sctp_ulpevent_make_pdapi (TYPE_2__*,int ,int ) ;
 scalar_t__ sctp_ulpevent_type_enabled (int ,int *) ;
 scalar_t__ sctp_ulpq_clear_pd (struct sctp_ulpq*) ;
 int stub1 (struct sock*,int ) ;

void sctp_ulpq_abort_pd(struct sctp_ulpq *ulpq, gfp_t gfp)
{
 struct sctp_ulpevent *ev = ((void*)0);
 struct sock *sk;

 if (!ulpq->pd_mode)
  return;

 sk = ulpq->asoc->base.sk;
 if (sctp_ulpevent_type_enabled(SCTP_PARTIAL_DELIVERY_EVENT,
           &sctp_sk(sk)->subscribe))
  ev = sctp_ulpevent_make_pdapi(ulpq->asoc,
           SCTP_PARTIAL_DELIVERY_ABORTED,
           gfp);
 if (ev)
  __skb_queue_tail(&sk->sk_receive_queue, sctp_event2skb(ev));


 if (sctp_ulpq_clear_pd(ulpq) || ev)
  sk->sk_data_ready(sk, 0);
}
