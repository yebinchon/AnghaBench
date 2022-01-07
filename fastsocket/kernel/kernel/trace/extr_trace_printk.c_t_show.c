
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,unsigned long) ;
 int seq_putc (struct seq_file*,char const) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int t_show(struct seq_file *m, void *v)
{
 const char **fmt = v;
 const char *str = *fmt;
 int i;

 seq_printf(m, "0x%lx : \"", *(unsigned long *)fmt);




 for (i = 0; str[i]; i++) {
  switch (str[i]) {
  case '\n':
   seq_puts(m, "\\n");
   break;
  case '\t':
   seq_puts(m, "\\t");
   break;
  case '\\':
   seq_puts(m, "\\");
   break;
  case '"':
   seq_puts(m, "\\\"");
   break;
  default:
   seq_putc(m, str[i]);
  }
 }
 seq_puts(m, "\"\n");

 return 0;
}
