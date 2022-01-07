
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DEBUG_MANGLE ;
 char* finish_mangling (int) ;
 int fprintf (int ,char*,char const*) ;
 int start_mangling (int const,int) ;
 int stderr ;
 int write_type (int const) ;

const char *
mangle_type_string (const tree type)
{
  const char *result;

  start_mangling (type, 0);
  write_type (type);
  result = finish_mangling ( 0);
  if (DEBUG_MANGLE)
    fprintf (stderr, "mangle_type_string = '%s'\n\n", result);
  return result;
}
