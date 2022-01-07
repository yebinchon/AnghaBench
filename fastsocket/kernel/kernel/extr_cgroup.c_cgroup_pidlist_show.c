
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static int cgroup_pidlist_show(struct seq_file *s, void *v)
{
 return seq_printf(s, "%d\n", *(int *)v);
}
