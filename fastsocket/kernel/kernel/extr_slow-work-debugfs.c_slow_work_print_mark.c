
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct slow_work {int mark; } ;
struct seq_file {int dummy; } ;


 struct timespec CURRENT_TIME ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;
 struct timespec timespec_sub (struct timespec,int ) ;

__attribute__((used)) static void slow_work_print_mark(struct seq_file *m, struct slow_work *work)
{
 struct timespec now, diff;

 now = CURRENT_TIME;
 diff = timespec_sub(now, work->mark);

 if (diff.tv_sec < 0)
  seq_puts(m, "  -ve ");
 else if (diff.tv_sec == 0 && diff.tv_nsec < 1000)
  seq_printf(m, "%3luns ", diff.tv_nsec);
 else if (diff.tv_sec == 0 && diff.tv_nsec < 1000000)
  seq_printf(m, "%3luus ", diff.tv_nsec / 1000);
 else if (diff.tv_sec == 0 && diff.tv_nsec < 1000000000)
  seq_printf(m, "%3lums ", diff.tv_nsec / 1000000);
 else if (diff.tv_sec <= 1)
  seq_puts(m, "   1s ");
 else if (diff.tv_sec < 60)
  seq_printf(m, "%4lus ", diff.tv_sec);
 else if (diff.tv_sec < 60 * 60)
  seq_printf(m, "%4lum ", diff.tv_sec / 60);
 else if (diff.tv_sec < 60 * 60 * 24)
  seq_printf(m, "%4luh ", diff.tv_sec / 3600);
 else
  seq_puts(m, "exces ");
}
