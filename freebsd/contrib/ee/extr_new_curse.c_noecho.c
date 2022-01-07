
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sg_flags; int c_lflag; } ;


 int ECHO ;
 int TCSETA ;
 int TIOCSETP ;
 TYPE_1__ Terminal ;
 int ioctl (int ,int ,TYPE_1__*) ;

void
noecho()
{
 int value;





 Terminal.sg_flags &= ~ECHO;
 value = ioctl(0, TIOCSETP, &Terminal);

}
