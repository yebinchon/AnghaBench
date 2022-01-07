
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int * member_0; } ;
struct kvec {void* member_0; int member_1; } ;


 int kernel_recvmsg (struct socket*,struct msghdr*,struct kvec*,int,int,unsigned int) ;

__attribute__((used)) static int _recv(struct socket *sock, void *buf, int size, unsigned flags)
{
 struct msghdr msg = {((void*)0), };
 struct kvec iov = {buf, size};
 return kernel_recvmsg(sock, &msg, &iov, 1, size, flags);
}
