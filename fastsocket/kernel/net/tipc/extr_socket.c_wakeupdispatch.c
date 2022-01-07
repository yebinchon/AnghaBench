
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_port {scalar_t__ usr_handle; } ;
struct sock {int sk_sleep; } ;


 scalar_t__ waitqueue_active (int ) ;
 int wake_up_interruptible (int ) ;

__attribute__((used)) static void wakeupdispatch(struct tipc_port *tport)
{
 struct sock *sk = (struct sock *)tport->usr_handle;

 if (waitqueue_active(sk->sk_sleep))
  wake_up_interruptible(sk->sk_sleep);
}
