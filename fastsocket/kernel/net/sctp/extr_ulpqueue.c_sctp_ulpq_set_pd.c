
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_ulpq {int pd_mode; TYPE_2__* asoc; } ;
struct sctp_sock {int pd_mode; } ;
struct TYPE_3__ {int sk; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int atomic_inc (int *) ;
 struct sctp_sock* sctp_sk (int ) ;

__attribute__((used)) static void sctp_ulpq_set_pd(struct sctp_ulpq *ulpq)
{
 struct sctp_sock *sp = sctp_sk(ulpq->asoc->base.sk);

 atomic_inc(&sp->pd_mode);
 ulpq->pd_mode = 1;
}
