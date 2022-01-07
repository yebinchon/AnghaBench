
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* c_cc; int sg_flags; int c_lflag; } ;


 int ICANON ;
 int ISIG ;
 char Intr ;
 int RAW ;
 int TCSETA ;
 int TIOCSETP ;
 TYPE_1__ Terminal ;
 size_t VEOF ;
 size_t VEOL ;
 size_t VINTR ;
 int ioctl (int ,int ,TYPE_1__*) ;

void
noraw()
{
 int value;
 Terminal.sg_flags &= ~RAW;
 value = ioctl(0, TIOCSETP, &Terminal);



}
