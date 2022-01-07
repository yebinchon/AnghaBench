
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct page {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int num; } ;
struct TYPE_3__ {int (* sendpage ) (struct sock*,struct page*,int,size_t,int) ;} ;


 int EAGAIN ;
 scalar_t__ inet_autobind (struct sock*) ;
 TYPE_2__* inet_sk (struct sock*) ;
 int inet_sock_cpu_or_flow_record (struct sock*) ;
 int sock_no_sendpage (struct socket*,struct page*,int,size_t,int) ;
 int stub1 (struct sock*,struct page*,int,size_t,int) ;

__attribute__((used)) static ssize_t inet_sendpage(struct socket *sock, struct page *page, int offset,
        size_t size, int flags)
{
 struct sock *sk = sock->sk;

 inet_sock_cpu_or_flow_record(sk);


 if (!inet_sk(sk)->num && inet_autobind(sk))
  return -EAGAIN;

 if (sk->sk_prot->sendpage)
  return sk->sk_prot->sendpage(sk, page, offset, size, flags);
 return sock_no_sendpage(sock, page, offset, size, flags);
}
