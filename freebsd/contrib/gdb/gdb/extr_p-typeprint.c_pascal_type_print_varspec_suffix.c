
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 int QUIT ;
 int TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_NAME (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int error (char*) ;
 int fprintf_filtered (struct ui_file*,char*) ;
 int pascal_print_func_args (struct type*,struct ui_file*) ;
 int pascal_type_print_base (struct type*,struct ui_file*,int,int ) ;
 int pascal_type_print_method_args (char*,char*,struct ui_file*) ;
 int pascal_type_print_varspec_prefix (struct type*,struct ui_file*,int ,int ) ;

__attribute__((used)) static void
pascal_type_print_varspec_suffix (struct type *type, struct ui_file *stream,
      int show, int passed_a_ptr,
      int demangled_args)
{
  if (type == 0)
    return;

  if (TYPE_NAME (type) && show <= 0)
    return;

  QUIT;

  switch (TYPE_CODE (type))
    {
    case 150:
      if (passed_a_ptr)
 fprintf_filtered (stream, ")");
      break;

    case 140:
      if (passed_a_ptr)
 fprintf_filtered (stream, ")");
      pascal_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, 0, 0, 0);
      break;

    case 139:
      if (passed_a_ptr)
 fprintf_filtered (stream, ")");
      pascal_type_print_method_args ("",
         "",
         stream);
      if (TYPE_CODE (TYPE_TARGET_TYPE (type)) != 128)
 {
   fprintf_filtered (stream, " : ");
   pascal_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, 0, 0);
   pascal_type_print_base (TYPE_TARGET_TYPE (type), stream, show, 0);
   pascal_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, 0,
         passed_a_ptr, 0);
 }
      break;

    case 138:
    case 136:
      pascal_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, 0, 1, 0);
      break;

    case 142:
      if (passed_a_ptr)
 fprintf_filtered (stream, ")");
      if (!demangled_args)
 pascal_print_func_args (type, stream);
      if (TYPE_CODE (TYPE_TARGET_TYPE (type)) != 128)
 {
   fprintf_filtered (stream, " : ");
   pascal_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, 0, 0);
   pascal_type_print_base (TYPE_TARGET_TYPE (type), stream, show, 0);
   pascal_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, 0,
         passed_a_ptr, 0);
 }
      break;

    case 130:
    case 133:
    case 129:
    case 145:
    case 141:
    case 143:
    case 128:
    case 144:
    case 147:
    case 148:
    case 135:
    case 137:
    case 134:
    case 149:
    case 146:
    case 131:
    case 132:


      break;
    default:
      error ("type not handled in pascal_type_print_varspec_suffix()");
      break;
    }
}
