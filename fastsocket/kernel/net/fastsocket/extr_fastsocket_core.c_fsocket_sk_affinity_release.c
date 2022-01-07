
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct TYPE_2__ {int sk_local; } ;



__attribute__((used)) static void fsocket_sk_affinity_release(struct socket *sock)
{
 sock->sk->sk_local = -1;
}
