
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct TYPE_5__ {TYPE_1__ sin_addr; } ;
union sctp_addr {TYPE_2__ v4; } ;
struct sock {int dummy; } ;
struct TYPE_6__ {int daddr; } ;


 TYPE_3__* inet_sk (struct sock*) ;

__attribute__((used)) static void sctp_v4_to_sk_daddr(union sctp_addr *addr, struct sock *sk)
{
 inet_sk(sk)->daddr = addr->v4.sin_addr.s_addr;
}
