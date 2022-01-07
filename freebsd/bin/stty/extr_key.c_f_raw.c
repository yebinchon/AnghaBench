
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_cflag; } ;
struct info {int set; TYPE_1__ t; scalar_t__ off; } ;


 int CS8 ;
 int CSIZE ;
 int PARENB ;
 int cfmakeraw (TYPE_1__*) ;
 int f_sane (struct info*) ;

void
f_raw(struct info *ip)
{

 if (ip->off)
  f_sane(ip);
 else {
  cfmakeraw(&ip->t);
  ip->t.c_cflag &= ~(CSIZE|PARENB);
  ip->t.c_cflag |= CS8;
  ip->set = 1;
 }
}
