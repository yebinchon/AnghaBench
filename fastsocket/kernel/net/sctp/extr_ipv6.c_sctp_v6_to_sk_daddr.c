
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__* s6_addr32; } ;
struct TYPE_11__ {TYPE_3__ sin6_addr; } ;
struct TYPE_8__ {scalar_t__ s_addr; } ;
struct TYPE_9__ {TYPE_1__ sin_addr; } ;
struct TYPE_12__ {scalar_t__ sa_family; } ;
union sctp_addr {TYPE_4__ v6; TYPE_2__ v4; TYPE_5__ sa; } ;
struct sock {int dummy; } ;
struct TYPE_14__ {TYPE_3__ daddr; } ;
struct TYPE_13__ {scalar_t__ v4mapped; } ;


 scalar_t__ AF_INET ;
 scalar_t__ htonl (int) ;
 TYPE_7__* inet6_sk (struct sock*) ;
 TYPE_6__* sctp_sk (struct sock*) ;

__attribute__((used)) static void sctp_v6_to_sk_daddr(union sctp_addr *addr, struct sock *sk)
{
 if (addr->sa.sa_family == AF_INET && sctp_sk(sk)->v4mapped) {
  inet6_sk(sk)->daddr.s6_addr32[0] = 0;
  inet6_sk(sk)->daddr.s6_addr32[1] = 0;
  inet6_sk(sk)->daddr.s6_addr32[2] = htonl(0x0000ffff);
  inet6_sk(sk)->daddr.s6_addr32[3] = addr->v4.sin_addr.s_addr;
 } else {
  inet6_sk(sk)->daddr = addr->v6.sin6_addr;
 }
}
