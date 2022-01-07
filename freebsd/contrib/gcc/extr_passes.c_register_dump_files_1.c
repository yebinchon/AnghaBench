
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_opt_pass {int properties_provided; int properties_destroyed; struct tree_opt_pass* next; scalar_t__ gate; struct tree_opt_pass* sub; scalar_t__ name; } ;


 int register_one_dump_file (struct tree_opt_pass*,int,int) ;

__attribute__((used)) static int
register_dump_files_1 (struct tree_opt_pass *pass, bool ipa, int properties)
{
  do
    {
      int new_properties = (properties | pass->properties_provided)
      & ~pass->properties_destroyed;

      if (pass->name)
        register_one_dump_file (pass, ipa, new_properties);

      if (pass->sub)
        new_properties = register_dump_files_1 (pass->sub, 0,
      new_properties);



      if (pass->gate)
        properties &= new_properties;
      else
        properties = new_properties;

      pass = pass->next;
    }
  while (pass);

  return properties;
}
