
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * c_cc; } ;
struct info {int set; TYPE_1__ t; } ;


 int CERASE ;
 int CKILL ;
 size_t VERASE ;
 size_t VKILL ;

void
f_ek(struct info *ip)
{

 ip->t.c_cc[VERASE] = CERASE;
 ip->t.c_cc[VKILL] = CKILL;
 ip->set = 1;
}
