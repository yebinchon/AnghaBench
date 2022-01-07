
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_opt_pass {int properties_required; int todo_flags_start; } ;


 int TODO_set_props ;
 int register_dump_files_1 (struct tree_opt_pass*,int,int) ;

__attribute__((used)) static void
register_dump_files (struct tree_opt_pass *pass, bool ipa, int properties)
{
  pass->properties_required |= properties;
  pass->todo_flags_start |= TODO_set_props;
  register_dump_files_1 (pass, ipa, properties);
}
