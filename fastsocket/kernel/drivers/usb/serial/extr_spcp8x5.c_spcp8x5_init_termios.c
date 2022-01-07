
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; } ;
struct TYPE_2__ {int c_cflag; int c_ispeed; int c_ospeed; } ;


 int B115200 ;
 int CLOCAL ;
 int CREAD ;
 int CS8 ;
 int HUPCL ;
 TYPE_1__ tty_std_termios ;

__attribute__((used)) static void spcp8x5_init_termios(struct tty_struct *tty)
{

 *(tty->termios) = tty_std_termios;
 tty->termios->c_cflag = B115200 | CS8 | CREAD | HUPCL | CLOCAL;
 tty->termios->c_ispeed = 115200;
 tty->termios->c_ospeed = 115200;
}
