
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsproxy {int dummy; } ;
struct ctl_table {int dummy; } ;


 int set_fail (char const**,struct ctl_table*,char*) ;
 struct ctl_table* sysctl_check_lookup (struct nsproxy*,struct ctl_table*) ;

__attribute__((used)) static void sysctl_check_leaf(struct nsproxy *namespaces,
    struct ctl_table *table, const char **fail)
{
 struct ctl_table *ref;

 ref = sysctl_check_lookup(namespaces, table);
 if (ref && (ref != table))
  set_fail(fail, table, "Sysctl already exists");
}
