
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct kvec {int iov_len; void* iov_base; } ;


 int do_send (struct socket*,struct kvec*,int,int,int ) ;

__attribute__((used)) static int _send(struct socket *sock, const void *buff, int len)
{
 struct kvec vec;
 vec.iov_base = (void *) buff;
 vec.iov_len = len;
 return do_send(sock, &vec, 1, len, 0);
}
