
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int saved_command_line ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int cmdline_proc_show(struct seq_file *m, void *v)
{
 seq_printf(m, "%s\n", saved_command_line);
 return 0;
}
