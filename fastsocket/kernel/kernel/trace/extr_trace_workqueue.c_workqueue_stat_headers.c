
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static int workqueue_stat_headers(struct seq_file *s)
{
 seq_printf(s, "# CPU  INSERTED  EXECUTED   NAME\n");
 seq_printf(s, "# |      |         |          |\n");
 return 0;
}
