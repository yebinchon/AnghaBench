
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int fd; scalar_t__ off; } ;


 int TIOCEXT ;
 int ioctl (int ,int ,int*) ;

void
f_extproc(struct info *ip)
{

 if (ip->off) {
  int tmp = 0;
  (void)ioctl(ip->fd, TIOCEXT, &tmp);
 } else {
  int tmp = 1;
  (void)ioctl(ip->fd, TIOCEXT, &tmp);
 }
}
