
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BINFO_OFFSET (int const) ;
 int const BINFO_TYPE (int const) ;
 scalar_t__ DEBUG_MANGLE ;
 char* finish_mangling (int) ;
 int fprintf (int ,char*,char const*) ;
 int get_identifier_nocopy (char const*) ;
 int start_mangling (int const,int) ;
 int stderr ;
 int write_char (char) ;
 int write_integer_cst (int ) ;
 int write_string (char*) ;
 int write_type (int const) ;

tree
mangle_ctor_vtbl_for_type (const tree type, const tree binfo)
{
  const char *result;

  start_mangling (type, 1);

  write_string ("_Z");
  write_string ("TC");
  write_type (type);
  write_integer_cst (BINFO_OFFSET (binfo));
  write_char ('_');
  write_type (BINFO_TYPE (binfo));

  result = finish_mangling ( 0);
  if (DEBUG_MANGLE)
    fprintf (stderr, "mangle_ctor_vtbl_for_type = %s\n\n", result);
  return get_identifier_nocopy (result);
}
