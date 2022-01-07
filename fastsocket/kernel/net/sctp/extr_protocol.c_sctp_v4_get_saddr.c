
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; int sin_family; } ;
union sctp_addr {TYPE_2__ v4; } ;
struct sctp_transport {scalar_t__ dst; union sctp_addr saddr; } ;
struct sctp_sock {int dummy; } ;
struct rtable {int rt_src; } ;
struct flowi {int dummy; } ;


 int AF_INET ;

__attribute__((used)) static void sctp_v4_get_saddr(struct sctp_sock *sk,
         struct sctp_transport *t,
         union sctp_addr *daddr,
         struct flowi *fl)
{
 union sctp_addr *saddr = &t->saddr;
        struct rtable *rt = (struct rtable *)t->dst;

 if (rt) {
  saddr->v4.sin_family = AF_INET;
  saddr->v4.sin_addr.s_addr = rt->rt_src;
 }
}
