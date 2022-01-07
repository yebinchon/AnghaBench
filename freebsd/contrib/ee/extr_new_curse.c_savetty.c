
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Saved_tty ;
 int TCGETA ;
 int TIOCGETP ;
 int ioctl (int ,int ,int *) ;

void
savetty()
{
 int value;




 value = ioctl(0, TIOCGETP, &Saved_tty);

}
