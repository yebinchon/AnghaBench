
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_iflag; int c_lflag; int c_oflag; } ;
struct info {int set; TYPE_1__ t; scalar_t__ off; } ;


 int BRKINT ;
 int ICANON ;
 int IEXTEN ;
 int IMAXBEL ;
 int ISIG ;
 int IXON ;
 int OPOST ;
 int f_sane (struct info*) ;

void
f_cbreak(struct info *ip)
{

 if (ip->off)
  f_sane(ip);
 else {
  ip->t.c_iflag |= BRKINT|IXON|IMAXBEL;
  ip->t.c_oflag |= OPOST;
  ip->t.c_lflag |= ISIG|IEXTEN;
  ip->t.c_lflag &= ~ICANON;
  ip->set = 1;
 }
}
