
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int do_vcc_ioctl (struct socket*,unsigned int,unsigned long,int ) ;

int vcc_ioctl(struct socket *sock, unsigned int cmd, unsigned long arg)
{
 return do_vcc_ioctl(sock, cmd, arg, 0);
}
