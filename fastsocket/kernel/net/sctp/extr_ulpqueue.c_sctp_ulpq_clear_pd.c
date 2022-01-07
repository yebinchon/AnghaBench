
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_ulpq {TYPE_2__* asoc; scalar_t__ pd_mode; } ;
struct TYPE_3__ {int sk; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int sctp_clear_pd (int ,TYPE_2__*) ;
 int sctp_ulpq_reasm_drain (struct sctp_ulpq*) ;

__attribute__((used)) static int sctp_ulpq_clear_pd(struct sctp_ulpq *ulpq)
{
 ulpq->pd_mode = 0;
 sctp_ulpq_reasm_drain(ulpq);
 return sctp_clear_pd(ulpq->asoc->base.sk, ulpq->asoc);
}
