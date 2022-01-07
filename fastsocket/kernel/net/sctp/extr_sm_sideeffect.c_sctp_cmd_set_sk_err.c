
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_err; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {TYPE_1__ base; } ;


 int UDP ;
 int sctp_style (struct sock*,int ) ;

__attribute__((used)) static void sctp_cmd_set_sk_err(struct sctp_association *asoc, int error)
{
 struct sock *sk = asoc->base.sk;

 if (!sctp_style(sk, UDP))
  sk->sk_err = error;
}
