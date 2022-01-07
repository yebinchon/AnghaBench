
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_oflag; int c_iflag; } ;
struct info {int set; TYPE_1__ t; scalar_t__ off; } ;


 int ICRNL ;
 int ONLCR ;

void
f_nl(struct info *ip)
{

 if (ip->off) {
  ip->t.c_iflag |= ICRNL;
  ip->t.c_oflag |= ONLCR;
 } else {
  ip->t.c_iflag &= ~ICRNL;
  ip->t.c_oflag &= ~ONLCR;
 }
 ip->set = 1;
}
