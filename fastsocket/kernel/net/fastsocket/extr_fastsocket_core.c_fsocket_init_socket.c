
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct TYPE_3__ {int sk_affinity; } ;


 int DEBUG ;
 int DPRINTK (int ,char*,TYPE_1__*) ;
 int SOCK_AFFINITY ;
 int SOCK_DIRECT_TCP ;
 scalar_t__ enable_direct_tcp ;
 scalar_t__ enable_receive_cpu_selection ;
 int smp_processor_id () ;
 int sock_set_flag (TYPE_1__*,int ) ;

__attribute__((used)) static void fsocket_init_socket(struct socket *sock)
{
 if (enable_direct_tcp) {
  sock_set_flag(sock->sk, SOCK_DIRECT_TCP);
  DPRINTK(DEBUG, "Socket 0x%p is set with DIRECT_TCP\n", sock->sk);
 }
 if (enable_receive_cpu_selection) {
  sock_set_flag(sock->sk, SOCK_AFFINITY);
  sock->sk->sk_affinity = smp_processor_id();
  DPRINTK(DEBUG, "Socket 0x%p is set with RCS\n", sock->sk);
 }
}
