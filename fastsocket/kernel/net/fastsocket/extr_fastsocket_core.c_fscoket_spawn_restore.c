
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct TYPE_2__ {int sk_local; } ;


 int fsocket_filp_close_spawn (int) ;
 int fsocket_process_affinity_restore (int ) ;
 int fsocket_sk_affinity_release (struct socket*) ;

void fscoket_spawn_restore(struct socket *sock, int fd)
{
 fsocket_sk_affinity_release(sock);
 fsocket_filp_close_spawn(fd);
 fsocket_process_affinity_restore(sock->sk->sk_local);
}
