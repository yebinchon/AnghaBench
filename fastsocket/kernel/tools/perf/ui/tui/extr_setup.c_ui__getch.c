
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int K_ERROR ;
 int K_ESC ;
 int K_RESIZE ;
 int K_TIMER ;
 int SLang_getkey () ;
 int SLang_ungetkey (int) ;
 int SLkp_getkey () ;
 scalar_t__ errno ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int ui__setup_sigwinch () ;

int ui__getch(int delay_secs)
{
 struct timeval timeout, *ptimeout = delay_secs ? &timeout : ((void*)0);
 fd_set read_set;
 int err, key;

 ui__setup_sigwinch();

 FD_ZERO(&read_set);
 FD_SET(0, &read_set);

 if (delay_secs) {
  timeout.tv_sec = delay_secs;
  timeout.tv_usec = 0;
 }

        err = select(1, &read_set, ((void*)0), ((void*)0), ptimeout);

 if (err == 0)
  return K_TIMER;

 if (err == -1) {
  if (errno == EINTR)
   return K_RESIZE;
  return K_ERROR;
 }

 key = SLang_getkey();
 if (key != K_ESC)
  return key;

 FD_ZERO(&read_set);
 FD_SET(0, &read_set);
 timeout.tv_sec = 0;
 timeout.tv_usec = 20;
        err = select(1, &read_set, ((void*)0), ((void*)0), &timeout);
 if (err == 0)
  return K_ESC;

 SLang_ungetkey(key);
 return SLkp_getkey();
}
