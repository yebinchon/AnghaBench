
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int finish_mangling (int) ;
 int get_identifier_nocopy (int ) ;
 int start_mangling (int const,int) ;
 int write_name (int const,int ) ;
 int write_string (char*) ;

tree
mangle_ref_init_variable (const tree variable)
{
  start_mangling (variable, 1);
  write_string ("_ZGR");
  write_name (variable, 0);
  return get_identifier_nocopy (finish_mangling ( 0));
}
