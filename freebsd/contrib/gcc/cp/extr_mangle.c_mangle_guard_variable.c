
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_NAME (int const) ;
 char* IDENTIFIER_POINTER (int ) ;
 int finish_mangling (int) ;
 int get_identifier_nocopy (int ) ;
 int start_mangling (int const,int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int write_name (int const,int ) ;
 int write_string (char*) ;

tree
mangle_guard_variable (const tree variable)
{
  start_mangling (variable, 1);
  write_string ("_ZGV");
  if (strncmp (IDENTIFIER_POINTER (DECL_NAME (variable)), "_ZGR", 4) == 0)


    write_string (IDENTIFIER_POINTER (DECL_NAME (variable)) + 4);
  else
    write_name (variable, 0);
  return get_identifier_nocopy (finish_mangling ( 0));
}
