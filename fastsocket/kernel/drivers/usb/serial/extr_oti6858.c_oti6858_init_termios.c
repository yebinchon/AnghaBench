
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; } ;
struct TYPE_2__ {int c_cflag; int c_ispeed; int c_ospeed; } ;


 int B38400 ;
 int CLOCAL ;
 int CREAD ;
 int CS8 ;
 int HUPCL ;
 TYPE_1__ tty_std_termios ;

__attribute__((used)) static void oti6858_init_termios(struct tty_struct *tty)
{
 *(tty->termios) = tty_std_termios;
 tty->termios->c_cflag = B38400 | CS8 | CREAD | HUPCL | CLOCAL;
 tty->termios->c_ispeed = 38400;
 tty->termios->c_ospeed = 38400;
}
