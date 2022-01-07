
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_NOCTTY ;
 int O_RDWR ;
 int SIGTTOU ;
 void SIG_IGN () ;
 int TIOCNOTTY ;
 int _exit (int) ;
 int close (int) ;
 int dup (int) ;
 int errno ;
 char* inferior_thisrun_terminal ;
 int ioctl (int,int ,int ) ;
 int open (char*,int) ;
 int print_sys_errmsg (char*,int ) ;
 scalar_t__ signal (int ,void (*) ()) ;

void
new_tty (void)
{
  int tty;

  if (inferior_thisrun_terminal == 0)
    return;
  tty = open (inferior_thisrun_terminal, O_RDWR);

  if (tty == -1)
    {
      print_sys_errmsg (inferior_thisrun_terminal, errno);
      _exit (1);
    }


  if (tty != 0)
    {
      close (0);
      dup (tty);
    }
  if (tty != 1)
    {
      close (1);
      dup (tty);
    }
  if (tty != 2)
    {
      close (2);
      dup (tty);
    }
  if (tty > 2)
    close (tty);

}
