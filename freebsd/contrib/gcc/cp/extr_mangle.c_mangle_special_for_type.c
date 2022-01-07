
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DEBUG_MANGLE ;
 char* finish_mangling (int) ;
 int fprintf (int ,char*,char const*) ;
 int get_identifier_nocopy (char const*) ;
 int start_mangling (int const,int) ;
 int stderr ;
 int write_string (char const*) ;
 int write_type (int const) ;

__attribute__((used)) static tree
mangle_special_for_type (const tree type, const char *code)
{
  const char *result;



  start_mangling (type, 1);


  write_string ("_Z");
  write_string (code);


  write_type (type);
  result = finish_mangling ( 0);

  if (DEBUG_MANGLE)
    fprintf (stderr, "mangle_special_for_type = %s\n\n", result);

  return get_identifier_nocopy (result);
}
