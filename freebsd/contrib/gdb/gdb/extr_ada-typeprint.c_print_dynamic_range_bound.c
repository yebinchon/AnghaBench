
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef int LONGEST ;


 int GROW_VECT (char*,size_t,scalar_t__) ;
 int ada_print_scalar (struct type*,int ,struct ui_file*) ;
 int fprintf_filtered (struct ui_file*,char*) ;
 int get_int_var_value (char*,int ,int*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void
print_dynamic_range_bound (struct type *type, const char *name, int name_len,
      const char *suffix, struct ui_file *stream)
{
  static char *name_buf = ((void*)0);
  static size_t name_buf_len = 0;
  LONGEST B;
  int OK;

  GROW_VECT (name_buf, name_buf_len, name_len + strlen (suffix) + 1);
  strncpy (name_buf, name, name_len);
  strcpy (name_buf + name_len, suffix);

  B = get_int_var_value (name_buf, 0, &OK);
  if (OK)
    ada_print_scalar (type, B, stream);
  else
    fprintf_filtered (stream, "?");
}
