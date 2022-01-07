
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct TYPE_2__ {int sk_local; } ;


 int DEBUG ;
 int DPRINTK (int ,char*,int) ;
 int SOCK_LOCAL ;
 int sock_set_flag (TYPE_1__*,int ) ;

__attribute__((used)) static void fsocket_sk_affinity_set(struct socket *sock, int cpu)
{
 sock_set_flag(sock->sk, SOCK_LOCAL);
 sock->sk->sk_local = cpu;

 DPRINTK(DEBUG, "Bind this listen socket to CPU %d", cpu);
}
