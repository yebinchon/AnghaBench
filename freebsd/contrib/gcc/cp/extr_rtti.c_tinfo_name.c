
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int build_string (scalar_t__,char const*) ;
 int fix_string_type (int ) ;
 char* mangle_type_string (int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static tree
tinfo_name (tree type)
{
  const char *name;
  tree name_string;

  name = mangle_type_string (type);
  name_string = fix_string_type (build_string (strlen (name) + 1, name));
  return name_string;
}
