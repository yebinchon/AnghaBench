
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_timewait_sock {scalar_t__ tw_md5_keylen; } ;
struct sock {int dummy; } ;


 int tcp_free_md5sig_pool () ;
 struct tcp_timewait_sock* tcp_twsk (struct sock*) ;

void tcp_twsk_destructor(struct sock *sk)
{





}
