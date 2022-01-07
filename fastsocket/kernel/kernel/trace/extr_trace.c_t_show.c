
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer {scalar_t__ next; int name; } ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int t_show(struct seq_file *m, void *v)
{
 struct tracer *t = v;

 if (!t)
  return 0;

 seq_printf(m, "%s", t->name);
 if (t->next)
  seq_putc(m, ' ');
 else
  seq_putc(m, '\n');

 return 0;
}
