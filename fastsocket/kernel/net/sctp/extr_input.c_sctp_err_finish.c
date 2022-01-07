
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sctp_association {int dummy; } ;


 int sctp_association_put (struct sctp_association*) ;
 int sctp_bh_unlock_sock (struct sock*) ;

void sctp_err_finish(struct sock *sk, struct sctp_association *asoc)
{
 sctp_bh_unlock_sock(sk);
 if (asoc)
  sctp_association_put(asoc);
}
