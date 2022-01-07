
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int ece; } ;
struct request_sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ ecn_ok; } ;


 TYPE_1__* inet_rsk (struct request_sock*) ;

__attribute__((used)) static __inline__ void
TCP_ECN_make_synack(struct request_sock *req, struct tcphdr *th)
{
 if (inet_rsk(req)->ecn_ok)
  th->ece = 1;
}
