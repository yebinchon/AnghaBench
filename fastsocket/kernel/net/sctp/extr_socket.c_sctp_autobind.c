
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sock {int dummy; } ;
struct sctp_af {int sockaddr_len; int (* inaddr_any ) (union sctp_addr*,int ) ;} ;
typedef int __be16 ;
struct TYPE_6__ {int num; } ;
struct TYPE_5__ {TYPE_1__* pf; } ;
struct TYPE_4__ {struct sctp_af* af; } ;


 int htons (int ) ;
 TYPE_3__* inet_sk (struct sock*) ;
 int sctp_do_bind (struct sock*,union sctp_addr*,int ) ;
 TYPE_2__* sctp_sk (struct sock*) ;
 int stub1 (union sctp_addr*,int ) ;

__attribute__((used)) static int sctp_autobind(struct sock *sk)
{
 union sctp_addr autoaddr;
 struct sctp_af *af;
 __be16 port;


 af = sctp_sk(sk)->pf->af;

 port = htons(inet_sk(sk)->num);
 af->inaddr_any(&autoaddr, port);

 return sctp_do_bind(sk, &autoaddr, af->sockaddr_len);
}
