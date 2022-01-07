
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_err_soft; } ;


 int sysctl_tcp_orphan_retries ;

__attribute__((used)) static int tcp_orphan_retries(struct sock *sk, int alive)
{
 int retries = sysctl_tcp_orphan_retries;


 if (sk->sk_err_soft && !alive)
  retries = 0;




 if (retries == 0 && alive)
  retries = 8;
 return retries;
}
