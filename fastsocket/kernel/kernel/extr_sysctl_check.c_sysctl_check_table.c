
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nsproxy {int dummy; } ;
struct ctl_table {int mode; scalar_t__ proc_handler; scalar_t__ strategy; struct ctl_table* child; scalar_t__ procname; scalar_t__ ctl_name; scalar_t__ maxlen; scalar_t__ data; scalar_t__ extra2; scalar_t__ extra1; TYPE_1__* parent; } ;
struct TYPE_2__ {int ctl_name; int procname; } ;


 int EINVAL ;
 int S_IRUGO ;
 int S_IXUGO ;
 scalar_t__ proc_dointvec ;
 scalar_t__ proc_dointvec_jiffies ;
 scalar_t__ proc_dointvec_minmax ;
 scalar_t__ proc_dointvec_ms_jiffies ;
 scalar_t__ proc_dointvec_userhz_jiffies ;
 scalar_t__ proc_dostring ;
 scalar_t__ proc_doulongvec_minmax ;
 scalar_t__ proc_doulongvec_ms_jiffies_minmax ;
 int set_fail (char const**,struct ctl_table*,char*) ;
 int sysctl_check_bin_path (struct ctl_table*,char const**) ;
 scalar_t__ sysctl_check_dir (struct nsproxy*,struct ctl_table*) ;
 int sysctl_check_leaf (struct nsproxy*,struct ctl_table*,char const**) ;
 scalar_t__ sysctl_data ;
 scalar_t__ sysctl_intvec ;
 scalar_t__ sysctl_jiffies ;
 scalar_t__ sysctl_ms_jiffies ;
 int sysctl_repair_table (struct ctl_table*) ;
 scalar_t__ sysctl_string ;

int sysctl_check_table(struct nsproxy *namespaces, struct ctl_table *table)
{
 int error = 0;
 for (; table->ctl_name || table->procname; table++) {
  const char *fail = ((void*)0);

  sysctl_repair_table(table);
  if (table->parent) {
   if (table->procname && !table->parent->procname)
    set_fail(&fail, table, "Parent without procname");
   if (table->ctl_name && !table->parent->ctl_name)
    set_fail(&fail, table, "Parent without ctl_name");
  }
  if (!table->procname)
   set_fail(&fail, table, "No procname");
  if (table->child) {
   if (table->data)
    set_fail(&fail, table, "Directory with data?");
   if (table->maxlen)
    set_fail(&fail, table, "Directory with maxlen?");
   if ((table->mode & (S_IRUGO|S_IXUGO)) != table->mode)
    set_fail(&fail, table, "Writable sysctl directory");
   if (table->proc_handler)
    set_fail(&fail, table, "Directory with proc_handler");
   if (table->strategy)
    set_fail(&fail, table, "Directory with strategy");
   if (table->extra1)
    set_fail(&fail, table, "Directory with extra1");
   if (table->extra2)
    set_fail(&fail, table, "Directory with extra2");
   if (sysctl_check_dir(namespaces, table))
    set_fail(&fail, table, "Inconsistent directory names");
  } else {
   if ((table->strategy == sysctl_data) ||
       (table->strategy == sysctl_string) ||
       (table->strategy == sysctl_intvec) ||
       (table->strategy == sysctl_jiffies) ||
       (table->strategy == sysctl_ms_jiffies) ||
       (table->proc_handler == proc_dostring) ||
       (table->proc_handler == proc_dointvec) ||
       (table->proc_handler == proc_dointvec_minmax) ||
       (table->proc_handler == proc_dointvec_jiffies) ||
       (table->proc_handler == proc_dointvec_userhz_jiffies) ||
       (table->proc_handler == proc_dointvec_ms_jiffies) ||
       (table->proc_handler == proc_doulongvec_minmax) ||
       (table->proc_handler == proc_doulongvec_ms_jiffies_minmax)) {
    if (!table->data)
     set_fail(&fail, table, "No data");
    if (!table->maxlen)
     set_fail(&fail, table, "No maxlen");
   }
   sysctl_check_leaf(namespaces, table, &fail);
  }
  sysctl_check_bin_path(table, &fail);
  if (table->mode > 0777)
   set_fail(&fail, table, "bogus .mode");
  if (fail) {
   set_fail(&fail, table, ((void*)0));
   error = -EINVAL;
  }
  if (table->child)
   error |= sysctl_check_table(namespaces, table->child);
 }
 return error;
}
