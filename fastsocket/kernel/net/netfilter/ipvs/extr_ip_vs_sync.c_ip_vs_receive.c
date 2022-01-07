
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int * member_0; } ;
struct kvec {char* iov_base; size_t iov_len; } ;


 int EnterFunction (int) ;
 int LeaveFunction (int) ;
 int kernel_recvmsg (struct socket*,struct msghdr*,struct kvec*,int,size_t const,int ) ;

__attribute__((used)) static int
ip_vs_receive(struct socket *sock, char *buffer, const size_t buflen)
{
 struct msghdr msg = {((void*)0),};
 struct kvec iov;
 int len;

 EnterFunction(7);


 iov.iov_base = buffer;
 iov.iov_len = (size_t)buflen;

 len = kernel_recvmsg(sock, &msg, &iov, 1, buflen, 0);

 if (len < 0)
  return -1;

 LeaveFunction(7);
 return len;
}
