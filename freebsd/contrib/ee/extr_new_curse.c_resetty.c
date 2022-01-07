
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Saved_tty ;
 int TCSETA ;
 int TIOCSETP ;
 int ioctl (int ,int ,int *) ;

void
resetty()
{
 int value;




 value = ioctl(0, TIOCSETP, &Saved_tty);

}
