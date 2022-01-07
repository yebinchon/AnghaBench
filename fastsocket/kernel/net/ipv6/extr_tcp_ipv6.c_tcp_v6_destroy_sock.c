
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ md5sig_info; } ;


 int inet6_destroy_sock (struct sock*) ;
 TYPE_1__* tcp_sk (struct sock*) ;
 int tcp_v4_destroy_sock (struct sock*) ;
 int tcp_v6_clear_md5_list (struct sock*) ;

__attribute__((used)) static void tcp_v6_destroy_sock(struct sock *sk)
{





 tcp_v4_destroy_sock(sk);
 inet6_destroy_sock(sk);
}
