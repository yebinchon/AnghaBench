
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trans_ctl_table {scalar_t__ ctl_name; scalar_t__ procname; } ;
struct ctl_table {scalar_t__ ctl_name; int procname; } ;


 int set_fail (char const**,struct ctl_table*,char*) ;
 scalar_t__ strcmp (int ,scalar_t__) ;
 struct trans_ctl_table* sysctl_binary_lookup (struct ctl_table*) ;

__attribute__((used)) static void sysctl_check_bin_path(struct ctl_table *table, const char **fail)
{
 const struct trans_ctl_table *ref;

 ref = sysctl_binary_lookup(table);
 if (table->ctl_name && !ref)
  set_fail(fail, table, "Unknown sysctl binary path");
 if (ref) {
  if (ref->procname &&
      (!table->procname ||
       (strcmp(table->procname, ref->procname) != 0)))
   set_fail(fail, table, "procname does not match binary path procname");

  if (ref->ctl_name && table->ctl_name &&
      (table->ctl_name != ref->ctl_name))
   set_fail(fail, table, "ctl_name does not match binary path ctl_name");
 }
}
