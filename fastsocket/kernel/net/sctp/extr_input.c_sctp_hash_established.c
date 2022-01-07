
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_association {scalar_t__ temp; } ;


 int __sctp_hash_established (struct sctp_association*) ;
 int sctp_local_bh_disable () ;
 int sctp_local_bh_enable () ;

void sctp_hash_established(struct sctp_association *asoc)
{
 if (asoc->temp)
  return;

 sctp_local_bh_disable();
 __sctp_hash_established(asoc);
 sctp_local_bh_enable();
}
