
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_row; int ws_col; } ;


 int TIOCGWINSZ ;
 int cols ;
 int errno ;
 scalar_t__ ioctl (int ,int ,char*) ;
 int rows ;
 int sigflags ;

void
handle_winch(int signo)
{
 int save_errno = errno;

 struct winsize ws;

 sigflags &= ~(1 << (signo - 1));
 if (ioctl(0, TIOCGWINSZ, (char *) &ws) >= 0) {
  if (ws.ws_row > 2) rows = ws.ws_row - 2;
  if (ws.ws_col > 8) cols = ws.ws_col - 8;
 }
 errno = save_errno;
}
