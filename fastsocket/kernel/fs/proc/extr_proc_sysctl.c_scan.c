
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct file {unsigned long f_pos; } ;
struct ctl_table_header {int dummy; } ;
typedef int filldir_t ;
struct TYPE_4__ {scalar_t__ procname; scalar_t__ ctl_name; } ;
typedef TYPE_1__ ctl_table ;


 int proc_sys_fill_cache (struct file*,void*,int ,struct ctl_table_header*,TYPE_1__*) ;

__attribute__((used)) static int scan(struct ctl_table_header *head, ctl_table *table,
  unsigned long *pos, struct file *file,
  void *dirent, filldir_t filldir)
{

 for (; table->ctl_name || table->procname; table++, (*pos)++) {
  int res;


  if (!table->procname)
   continue;

  if (*pos < file->f_pos)
   continue;

  res = proc_sys_fill_cache(file, dirent, filldir, head, table);
  if (res)
   return res;

  file->f_pos = *pos + 1;
 }
 return 0;
}
