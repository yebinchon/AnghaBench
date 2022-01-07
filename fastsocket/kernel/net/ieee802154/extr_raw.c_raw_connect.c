
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int raw_connect(struct sock *sk, struct sockaddr *uaddr,
   int addr_len)
{
 return -ENOTSUPP;
}
