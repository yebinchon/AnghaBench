
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int SUPPORTS_ONE_ONLY ;
 scalar_t__ anonymous_namespace_name ;
 int flag_weak ;
 scalar_t__ get_file_function_name (char*) ;
 scalar_t__ get_identifier (char*) ;

__attribute__((used)) static tree
get_anonymous_namespace_name(void)
{
  if (!anonymous_namespace_name)
    {


      if (! flag_weak || ! SUPPORTS_ONE_ONLY)
 anonymous_namespace_name = get_file_function_name ("N");
      else


 anonymous_namespace_name = get_identifier ("_GLOBAL__N_1");
    }
  return anonymous_namespace_name;
}
