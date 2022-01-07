
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {unsigned int msg_flags; } ;
struct kvec {int dummy; } ;


 int kernel_sendmsg (struct socket*,struct msghdr*,struct kvec*,int,int) ;

__attribute__((used)) static inline int do_send(struct socket *sock, struct kvec *vec, int count,
     int len, unsigned flags)
{
 struct msghdr msg = { .msg_flags = flags };
 return kernel_sendmsg(sock, &msg, vec, count, len);
}
