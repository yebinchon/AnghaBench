
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_lflag; scalar_t__* c_cc; } ;
struct pollfd {int events; int fd; } ;
struct perf_top {int delay_secs; } ;


 int ECHO ;
 int EINTR ;
 int ICANON ;
 int POLLIN ;
 int TCSAFLUSH ;
 int TCSANOW ;
 size_t VMIN ;
 size_t VTIME ;
 int errno ;
 int getc (int ) ;
 int perf_top__handle_keypress (struct perf_top*,int) ;
 int perf_top__print_sym_table (struct perf_top*) ;
 int poll (struct pollfd*,int,int) ;
 int pthread__unblock_sigwinch () ;
 int stdin ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static void *display_thread(void *arg)
{
 struct pollfd stdin_poll = { .fd = 0, .events = POLLIN };
 struct termios tc, save;
 struct perf_top *top = arg;
 int delay_msecs, c;

 tcgetattr(0, &save);
 tc = save;
 tc.c_lflag &= ~(ICANON | ECHO);
 tc.c_cc[VMIN] = 0;
 tc.c_cc[VTIME] = 0;

 pthread__unblock_sigwinch();
repeat:
 delay_msecs = top->delay_secs * 1000;
 tcsetattr(0, TCSANOW, &tc);

 getc(stdin);

 while (1) {
  perf_top__print_sym_table(top);




  switch (poll(&stdin_poll, 1, delay_msecs)) {
  case 0:
   continue;
  case -1:
   if (errno == EINTR)
    continue;

  default:
   goto process_hotkey;
  }
 }
process_hotkey:
 c = getc(stdin);
 tcsetattr(0, TCSAFLUSH, &save);

 perf_top__handle_keypress(top, c);
 goto repeat;

 return ((void*)0);
}
