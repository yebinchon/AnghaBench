
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* c_cc; int sg_flags; int c_lflag; } ;


 int FLUSHO ;
 int ICANON ;
 int IEXTEN ;
 int ISIG ;
 int Intr ;
 int PENDIN ;
 int RAW ;
 int TCSETA ;
 int TIOCSETP ;
 TYPE_1__ Terminal ;
 size_t VINTR ;
 size_t VMIN ;
 size_t VTIME ;
 int ioctl (int ,int ,TYPE_1__*) ;

void
raw()
{
 int value;
 Terminal.sg_flags |= RAW;
 value = ioctl(0, TIOCSETP, &Terminal);

}
