
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsproxy {int dummy; } ;
struct ctl_table_header {struct ctl_table* ctl_table; } ;
struct ctl_table {scalar_t__ ctl_name; struct ctl_table* child; scalar_t__ procname; } ;


 struct ctl_table_header* __sysctl_head_next (struct nsproxy*,struct ctl_table_header*) ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;
 int sysctl_depth (struct ctl_table*) ;
 int sysctl_head_finish (struct ctl_table_header*) ;
 struct ctl_table* sysctl_parent (struct ctl_table*,int) ;

__attribute__((used)) static struct ctl_table *sysctl_check_lookup(struct nsproxy *namespaces,
      struct ctl_table *table)
{
 struct ctl_table_header *head;
 struct ctl_table *ref, *test;
 int depth, cur_depth;

 depth = sysctl_depth(table);

 for (head = __sysctl_head_next(namespaces, ((void*)0)); head;
      head = __sysctl_head_next(namespaces, head)) {
  cur_depth = depth;
  ref = head->ctl_table;
repeat:
  test = sysctl_parent(table, cur_depth);
  for (; ref->ctl_name || ref->procname; ref++) {
   int match = 0;
   if (cur_depth && !ref->child)
    continue;

   if (test->procname && ref->procname &&
       (strcmp(test->procname, ref->procname) == 0))
     match++;

   if (test->ctl_name && ref->ctl_name &&
       (test->ctl_name == ref->ctl_name))
    match++;

   if (match) {
    if (cur_depth != 0) {
     cur_depth--;
     ref = ref->child;
     goto repeat;
    }
    goto out;
   }
  }
 }
 ref = ((void*)0);
out:
 sysctl_head_finish(head);
 return ref;
}
