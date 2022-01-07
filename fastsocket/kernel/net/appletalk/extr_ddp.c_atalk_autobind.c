
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_net; int s_node; } ;
struct sockaddr_at {TYPE_1__ sat_addr; } ;
struct sock {int dummy; } ;
struct atalk_sock {scalar_t__ src_net; int src_node; } ;
struct atalk_addr {scalar_t__ s_net; int s_node; } ;


 int ATADDR_ANYNET ;
 int EADDRNOTAVAIL ;
 int SOCK_ZAPPED ;
 struct atalk_sock* at_sk (struct sock*) ;
 struct atalk_addr* atalk_find_primary () ;
 int atalk_pick_and_bind_port (struct sock*,struct sockaddr_at*) ;
 scalar_t__ htons (int ) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static int atalk_autobind(struct sock *sk)
{
 struct atalk_sock *at = at_sk(sk);
 struct sockaddr_at sat;
 struct atalk_addr *ap = atalk_find_primary();
 int n = -EADDRNOTAVAIL;

 if (!ap || ap->s_net == htons(ATADDR_ANYNET))
  goto out;

 at->src_net = sat.sat_addr.s_net = ap->s_net;
 at->src_node = sat.sat_addr.s_node = ap->s_node;

 n = atalk_pick_and_bind_port(sk, &sat);
 if (!n)
  sock_reset_flag(sk, SOCK_ZAPPED);
out:
 return n;
}
