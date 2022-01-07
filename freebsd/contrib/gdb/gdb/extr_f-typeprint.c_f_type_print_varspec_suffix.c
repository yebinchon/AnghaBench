
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 int BOUND_CANNOT_BE_DETERMINED ;
 int BOUND_FETCH_ERROR ;
 int QUIT ;
 int TYPE_ARRAY_UPPER_BOUND_TYPE (struct type*) ;
 int const TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_NAME (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int f77_get_dynamic_lowerbound (struct type*,int*) ;
 int f77_get_dynamic_upperbound (struct type*,int*) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;

__attribute__((used)) static void
f_type_print_varspec_suffix (struct type *type, struct ui_file *stream,
        int show, int passed_a_ptr, int demangled_args)
{
  int upper_bound, lower_bound;
  int lower_bound_was_default = 0;
  static int arrayprint_recurse_level = 0;
  int retcode;

  if (type == 0)
    return;

  if (TYPE_NAME (type) && show <= 0)
    return;

  QUIT;

  switch (TYPE_CODE (type))
    {
    case 149:
      arrayprint_recurse_level++;

      if (arrayprint_recurse_level == 1)
 fprintf_filtered (stream, "(");

      if (TYPE_CODE (TYPE_TARGET_TYPE (type)) == 149)
 f_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, 0, 0, 0);

      retcode = f77_get_dynamic_lowerbound (type, &lower_bound);

      lower_bound_was_default = 0;

      if (retcode == BOUND_FETCH_ERROR)
 fprintf_filtered (stream, "???");
      else if (lower_bound == 1)
 lower_bound_was_default = 1;
      else
 fprintf_filtered (stream, "%d", lower_bound);

      if (lower_bound_was_default)
 lower_bound_was_default = 0;
      else
 fprintf_filtered (stream, ":");




      if (TYPE_ARRAY_UPPER_BOUND_TYPE (type) == BOUND_CANNOT_BE_DETERMINED)
 fprintf_filtered (stream, "*");
      else
 {
   retcode = f77_get_dynamic_upperbound (type, &upper_bound);

   if (retcode == BOUND_FETCH_ERROR)
     fprintf_filtered (stream, "???");
   else
     fprintf_filtered (stream, "%d", upper_bound);
 }

      if (TYPE_CODE (TYPE_TARGET_TYPE (type)) != 149)
 f_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, 0, 0, 0);
      if (arrayprint_recurse_level == 1)
 fprintf_filtered (stream, ")");
      else
 fprintf_filtered (stream, ",");
      arrayprint_recurse_level--;
      break;

    case 137:
    case 135:
      f_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, 0, 1, 0);
      fprintf_filtered (stream, ")");
      break;

    case 141:
      f_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, 0,
       passed_a_ptr, 0);
      if (passed_a_ptr)
 fprintf_filtered (stream, ")");

      fprintf_filtered (stream, "()");
      break;

    case 130:
    case 132:
    case 129:
    case 144:
    case 140:
    case 142:
    case 128:
    case 143:
    case 146:
    case 147:
    case 134:
    case 136:
    case 133:
    case 148:
    case 138:
    case 139:
    case 145:
    case 131:


      break;
    }
}
