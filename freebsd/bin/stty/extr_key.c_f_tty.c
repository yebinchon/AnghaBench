
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int fd; } ;


 int TIOCSETD ;
 int TTYDISC ;
 int err (int,char*) ;
 scalar_t__ ioctl (int ,int ,int*) ;

void
f_tty(struct info *ip)
{
 int tmp;

 tmp = TTYDISC;
 if (ioctl(ip->fd, TIOCSETD, &tmp) < 0)
  err(1, "TIOCSETD");
}
