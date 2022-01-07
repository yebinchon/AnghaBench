
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGWINCH ;
 int pthread__unblock_sigwinch () ;
 int signal (int ,int ) ;
 int ui__sigwinch ;

__attribute__((used)) static void ui__setup_sigwinch(void)
{
 static bool done;

 if (done)
  return;

 done = 1;
 pthread__unblock_sigwinch();
 signal(SIGWINCH, ui__sigwinch);
}
