
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;


 int SOCK_ZEROCOPY ;
 int experimental_zcopytx ;
 scalar_t__ sock_flag (int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool vhost_sock_zcopy(struct socket *sock)
{
 return unlikely(experimental_zcopytx) &&
  sock_flag(sock->sk, SOCK_ZEROCOPY);
}
