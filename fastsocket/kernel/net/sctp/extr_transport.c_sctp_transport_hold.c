
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int refcnt; } ;


 int atomic_inc (int *) ;

void sctp_transport_hold(struct sctp_transport *transport)
{
 atomic_inc(&transport->refcnt);
}
