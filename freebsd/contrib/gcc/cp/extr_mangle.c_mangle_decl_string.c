
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DEBUG_MANGLE ;
 scalar_t__ TREE_CODE (int const) ;
 int TREE_TYPE (int const) ;
 scalar_t__ TYPE_DECL ;
 char* finish_mangling (int) ;
 int fprintf (int ,char*,char const*) ;
 int start_mangling (int const,int) ;
 int stderr ;
 int write_mangled_name (int const,int) ;
 int write_type (int ) ;

__attribute__((used)) static const char *
mangle_decl_string (const tree decl)
{
  const char *result;

  start_mangling (decl, 1);

  if (TREE_CODE (decl) == TYPE_DECL)
    write_type (TREE_TYPE (decl));
  else
    write_mangled_name (decl, 1);

  result = finish_mangling ( 1);
  if (DEBUG_MANGLE)
    fprintf (stderr, "mangle_decl_string = '%s'\n\n", result);
  return result;
}
