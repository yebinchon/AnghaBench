
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* opt; } ;
struct ipv6_pinfo {TYPE_1__ cork; } ;
struct TYPE_5__ {int fl; int flags; int * dst; } ;
struct inet_sock {TYPE_2__ cork; } ;
struct TYPE_6__ {struct TYPE_6__* srcrt; struct TYPE_6__* hopopt; struct TYPE_6__* dst1opt; struct TYPE_6__* dst0opt; } ;


 int IPCORK_ALLFRAG ;
 int dst_release (int *) ;
 int kfree (TYPE_3__*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void ip6_cork_release(struct inet_sock *inet, struct ipv6_pinfo *np)
{
 if (np->cork.opt) {
  kfree(np->cork.opt->dst0opt);
  kfree(np->cork.opt->dst1opt);
  kfree(np->cork.opt->hopopt);
  kfree(np->cork.opt->srcrt);
  kfree(np->cork.opt);
  np->cork.opt = ((void*)0);
 }

 if (inet->cork.dst) {
  dst_release(inet->cork.dst);
  inet->cork.dst = ((void*)0);
  inet->cork.flags &= ~IPCORK_ALLFRAG;
 }
 memset(&inet->cork.fl, 0, sizeof(inet->cork.fl));
}
