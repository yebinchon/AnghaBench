
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcnt; } ;
struct sctp_endpoint {TYPE_1__ base; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int sctp_endpoint_destroy (struct sctp_endpoint*) ;

void sctp_endpoint_put(struct sctp_endpoint *ep)
{
 if (atomic_dec_and_test(&ep->base.refcnt))
  sctp_endpoint_destroy(ep);
}
