
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcnt; } ;
struct sctp_association {TYPE_1__ base; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int sctp_association_destroy (struct sctp_association*) ;

void sctp_association_put(struct sctp_association *asoc)
{
 if (atomic_dec_and_test(&asoc->base.refcnt))
  sctp_association_destroy(asoc);
}
