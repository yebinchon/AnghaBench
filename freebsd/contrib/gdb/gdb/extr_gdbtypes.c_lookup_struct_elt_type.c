
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 struct type* TYPE_BASECLASS (struct type*,int) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_CODE_REF ;
 scalar_t__ TYPE_CODE_STRUCT ;
 scalar_t__ TYPE_CODE_UNION ;
 char* TYPE_FIELD_NAME (struct type*,int) ;
 struct type* TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_NFIELDS (struct type*) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int error (char*) ;
 int fprintf_unfiltered (int ,char*) ;
 int fputs_filtered (char*,int ) ;
 int gdb_flush (int ) ;
 int gdb_stderr ;
 int gdb_stdout ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strcmp_iw (char*,char*) ;
 int target_terminal_ours () ;
 char* type_name_no_tag (struct type*) ;
 int type_print (struct type*,char*,int ,int) ;

struct type *
lookup_struct_elt_type (struct type *type, char *name, int noerr)
{
  int i;

  for (;;)
    {
      CHECK_TYPEDEF (type);
      if (TYPE_CODE (type) != TYPE_CODE_PTR
   && TYPE_CODE (type) != TYPE_CODE_REF)
 break;
      type = TYPE_TARGET_TYPE (type);
    }

  if (TYPE_CODE (type) != TYPE_CODE_STRUCT &&
      TYPE_CODE (type) != TYPE_CODE_UNION)
    {
      target_terminal_ours ();
      gdb_flush (gdb_stdout);
      fprintf_unfiltered (gdb_stderr, "Type ");
      type_print (type, "", gdb_stderr, -1);
      error (" is not a structure or union type.");
    }
  for (i = TYPE_NFIELDS (type) - 1; i >= TYPE_N_BASECLASSES (type); i--)
    {
      char *t_field_name = TYPE_FIELD_NAME (type, i);

      if (t_field_name && (strcmp_iw (t_field_name, name) == 0))
 {
   return TYPE_FIELD_TYPE (type, i);
 }
    }


  for (i = TYPE_N_BASECLASSES (type) - 1; i >= 0; i--)
    {
      struct type *t;

      t = lookup_struct_elt_type (TYPE_BASECLASS (type, i), name, noerr);
      if (t != ((void*)0))
 {
   return t;
 }
    }

  if (noerr)
    {
      return ((void*)0);
    }

  target_terminal_ours ();
  gdb_flush (gdb_stdout);
  fprintf_unfiltered (gdb_stderr, "Type ");
  type_print (type, "", gdb_stderr, -1);
  fprintf_unfiltered (gdb_stderr, " has no component named ");
  fputs_filtered (name, gdb_stderr);
  error (".");
  return (struct type *) -1;
}
