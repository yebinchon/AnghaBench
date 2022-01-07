
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_sndbuf; } ;


 int sk_wmem_alloc_get (struct sock*) ;

__attribute__((used)) static int sctp_writeable(struct sock *sk)
{
 int amt = 0;

 amt = sk->sk_sndbuf - sk_wmem_alloc_get(sk);
 if (amt < 0)
  amt = 0;
 return amt;
}
