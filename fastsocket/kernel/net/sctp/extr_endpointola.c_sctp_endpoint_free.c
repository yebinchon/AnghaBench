
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dead; TYPE_1__* sk; } ;
struct sctp_endpoint {TYPE_2__ base; } ;
struct TYPE_3__ {int sk_state; } ;


 int SCTP_SS_CLOSED ;
 int sctp_endpoint_put (struct sctp_endpoint*) ;
 int sctp_unhash_endpoint (struct sctp_endpoint*) ;

void sctp_endpoint_free(struct sctp_endpoint *ep)
{
 ep->base.dead = 1;

 ep->base.sk->sk_state = SCTP_SS_CLOSED;


 sctp_unhash_endpoint(ep);

 sctp_endpoint_put(ep);
}
