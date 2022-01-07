
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_char ;
struct TYPE_2__ {int c_lflag; int c_iflag; void** c_cc; } ;
struct info {int set; TYPE_1__ t; } ;


 void* CTRL (char) ;
 int ECHOCTL ;
 int ECHOE ;
 int ECHOKE ;
 int ECHOPRT ;
 int IXANY ;
 size_t VERASE ;
 size_t VINTR ;
 size_t VKILL ;

void
f_dec(struct info *ip)
{

 ip->t.c_cc[VERASE] = (u_char)0177;
 ip->t.c_cc[VKILL] = CTRL('u');
 ip->t.c_cc[VINTR] = CTRL('c');
 ip->t.c_lflag &= ~ECHOPRT;
 ip->t.c_lflag |= ECHOE|ECHOKE|ECHOCTL;
 ip->t.c_iflag &= ~IXANY;
 ip->set = 1;
}
