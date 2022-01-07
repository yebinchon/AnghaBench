
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int num; } ;


 int BUG () ;
 TYPE_1__* inet_sk (struct sock*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void ping_v4_hash(struct sock *sk)
{
 pr_debug("ping_v4_hash(sk->port=%u)\n", inet_sk(sk)->num);
 BUG();
}
