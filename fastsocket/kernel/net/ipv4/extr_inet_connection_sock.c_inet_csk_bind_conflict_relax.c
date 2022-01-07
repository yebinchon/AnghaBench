
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct inet_bind_bucket {int dummy; } ;
struct TYPE_4__ {TYPE_1__* icsk_af_ops; } ;
struct TYPE_3__ {int (* bind_conflict ) (struct sock*,struct inet_bind_bucket*) ;} ;


 int SOCK_RELAX ;
 TYPE_2__* inet_csk (struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*,struct inet_bind_bucket*) ;

__attribute__((used)) static int inet_csk_bind_conflict_relax(struct sock *sk,
     struct inet_bind_bucket *tb)
{
 int ret;

 sock_set_flag(sk, SOCK_RELAX);
 ret = inet_csk(sk)->icsk_af_ops->bind_conflict(sk, tb);
 sock_reset_flag(sk, SOCK_RELAX);
 return ret;
}
