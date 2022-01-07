
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;


 int __sctp_unhash_endpoint (struct sctp_endpoint*) ;
 int sctp_local_bh_disable () ;
 int sctp_local_bh_enable () ;

void sctp_unhash_endpoint(struct sctp_endpoint *ep)
{
 sctp_local_bh_disable();
 __sctp_unhash_endpoint(ep);
 sctp_local_bh_enable();
}
