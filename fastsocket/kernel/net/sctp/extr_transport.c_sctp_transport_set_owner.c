
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {struct sctp_association* asoc; } ;
struct sctp_association {int dummy; } ;


 int sctp_association_hold (struct sctp_association*) ;

void sctp_transport_set_owner(struct sctp_transport *transport,
         struct sctp_association *asoc)
{
 transport->asoc = asoc;
 sctp_association_hold(asoc);
}
