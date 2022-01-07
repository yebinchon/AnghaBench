
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int counter; } ;
struct sock {TYPE_1__ sk_refcnt; } ;
struct TYPE_5__ {int num; } ;


 TYPE_2__* inet_sk (struct sock*) ;
 int pr_debug (char*,TYPE_2__*,...) ;
 int sk_common_release (struct sock*) ;

__attribute__((used)) static void ping_close(struct sock *sk, long timeout)
{
 pr_debug("ping_close(sk=%p,sk->num=%u)\n",
  inet_sk(sk), inet_sk(sk)->num);
 pr_debug("isk->refcnt = %d\n", sk->sk_refcnt.counter);

 sk_common_release(sk);
}
