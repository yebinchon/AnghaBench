
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int ecn_flags; } ;
struct request_sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ ecn_ok; } ;


 int TCP_ECN_OK ;
 TYPE_1__* inet_rsk (struct request_sock*) ;

__attribute__((used)) static inline void TCP_ECN_openreq_child(struct tcp_sock *tp,
      struct request_sock *req)
{
 tp->ecn_flags = inet_rsk(req)->ecn_ok ? TCP_ECN_OK : 0;
}
