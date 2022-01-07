
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void print_disabled(struct seq_file *m)
{
 seq_puts(m, "#\n"
   "#  Stack tracer disabled\n"
   "#\n"
   "# To enable the stack tracer, either add 'stacktrace' to the\n"
   "# kernel command line\n"
   "# or 'echo 1 > /proc/sys/kernel/stack_tracer_enabled'\n"
   "#\n");
}
