
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int env ;
 int longjmp (int ,int) ;
 int quit (int) ;
 int sigactive ;
 int sigflags ;
 int siglongjmp (int ,int) ;

void
handle_int(int signo)
{
 if (!sigactive)
  quit(1);
 sigflags &= ~(1 << (signo - 1));



 longjmp(env, -1);

}
