
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bug_entry {int dummy; } ;


 struct bug_entry* __start___bug_table ;
 struct bug_entry const* __stop___bug_table ;
 unsigned long bug_addr (struct bug_entry const*) ;
 struct bug_entry const* module_find_bug (unsigned long) ;

const struct bug_entry *find_bug(unsigned long bugaddr)
{
 const struct bug_entry *bug;

 for (bug = __start___bug_table; bug < __stop___bug_table; ++bug)
  if (bugaddr == bug_addr(bug))
   return bug;

 return module_find_bug(bugaddr);
}
