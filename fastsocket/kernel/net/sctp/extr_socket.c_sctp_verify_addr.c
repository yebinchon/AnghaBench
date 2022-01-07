
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sock {int dummy; } ;
struct sctp_af {int (* addr_valid ) (union sctp_addr*,TYPE_2__*,int *) ;} ;
struct TYPE_7__ {TYPE_1__* pf; } ;
struct TYPE_6__ {int (* send_verify ) (TYPE_2__*,union sctp_addr*) ;} ;


 int EINVAL ;
 TYPE_2__* sctp_sk (struct sock*) ;
 struct sctp_af* sctp_sockaddr_af (TYPE_2__*,union sctp_addr*,int) ;
 int stub1 (union sctp_addr*,TYPE_2__*,int *) ;
 int stub2 (TYPE_2__*,union sctp_addr*) ;

__attribute__((used)) static inline int sctp_verify_addr(struct sock *sk, union sctp_addr *addr,
       int len)
{
 struct sctp_af *af;


 af = sctp_sockaddr_af(sctp_sk(sk), addr, len);
 if (!af)
  return -EINVAL;


 if (!af->addr_valid(addr, sctp_sk(sk), ((void*)0)))
  return -EINVAL;

 if (!sctp_sk(sk)->pf->send_verify(sctp_sk(sk), (addr)))
  return -EINVAL;

 return 0;
}
