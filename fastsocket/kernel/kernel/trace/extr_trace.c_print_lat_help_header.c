
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void print_lat_help_header(struct seq_file *m)
{
 seq_puts(m, "#                  _------=> CPU#            \n");
 seq_puts(m, "#                 / _-----=> irqs-off        \n");
 seq_puts(m, "#                | / _----=> need-resched    \n");
 seq_puts(m, "#                || / _---=> hardirq/softirq \n");
 seq_puts(m, "#                ||| / _--=> preempt-depth   \n");
 seq_puts(m, "#                |||| /_--=> lock-depth       \n");
 seq_puts(m, "#                |||||/     delay             \n");
 seq_puts(m, "#  cmd     pid   |||||| time  |   caller      \n");
 seq_puts(m, "#     \\   /      ||||||   \\   |   /           \n");
}
