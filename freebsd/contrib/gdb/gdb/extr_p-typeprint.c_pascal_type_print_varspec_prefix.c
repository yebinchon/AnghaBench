
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 int BOUND_CANNOT_BE_DETERMINED ;
 int QUIT ;
 int TYPE_ARRAY_LOWER_BOUND_VALUE (struct type*) ;
 int TYPE_ARRAY_UPPER_BOUND_TYPE (struct type*) ;
 int TYPE_ARRAY_UPPER_BOUND_VALUE (struct type*) ;
 int TYPE_CODE (struct type*) ;
 int TYPE_DOMAIN_TYPE (struct type*) ;
 int TYPE_LENGTH (struct type*) ;
 scalar_t__ TYPE_NAME (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int error (char*) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int pascal_type_print_base (int ,struct ui_file*,int ,int) ;
 char* type_name_no_tag (int ) ;

void
pascal_type_print_varspec_prefix (struct type *type, struct ui_file *stream,
      int show, int passed_a_ptr)
{
  char *name;
  if (type == 0)
    return;

  if (TYPE_NAME (type) && show <= 0)
    return;

  QUIT;

  switch (TYPE_CODE (type))
    {
    case 138:
      fprintf_filtered (stream, "^");
      pascal_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, 0, 1);
      break;

    case 140:
      if (passed_a_ptr)
 fprintf_filtered (stream, "(");
      pascal_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, 0, 0);
      fprintf_filtered (stream, " ");
      name = type_name_no_tag (TYPE_DOMAIN_TYPE (type));
      if (name)
 fputs_filtered (name, stream);
      else
 pascal_type_print_base (TYPE_DOMAIN_TYPE (type), stream, 0, passed_a_ptr);
      fprintf_filtered (stream, "::");
      break;

    case 139:
      if (passed_a_ptr)
 fprintf_filtered (stream, "(");
      if (TYPE_CODE (TYPE_TARGET_TYPE (type)) != 128)
 {
   fprintf_filtered (stream, "function  ");
 }
      else
 {
   fprintf_filtered (stream, "procedure ");
 }

      if (passed_a_ptr)
 {
   fprintf_filtered (stream, " ");
   pascal_type_print_base (TYPE_DOMAIN_TYPE (type), stream, 0, passed_a_ptr);
   fprintf_filtered (stream, "::");
 }
      break;

    case 136:
      pascal_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, 0, 1);
      fprintf_filtered (stream, "&");
      break;

    case 142:
      if (passed_a_ptr)
 fprintf_filtered (stream, "(");

      if (TYPE_CODE (TYPE_TARGET_TYPE (type)) != 128)
 {
   fprintf_filtered (stream, "function  ");
 }
      else
 {
   fprintf_filtered (stream, "procedure ");
 }

      break;

    case 150:
      if (passed_a_ptr)
 fprintf_filtered (stream, "(");
      fprintf_filtered (stream, "array ");
      if (TYPE_LENGTH (type) >= 0 && TYPE_LENGTH (TYPE_TARGET_TYPE (type)) > 0
 && TYPE_ARRAY_UPPER_BOUND_TYPE (type) != BOUND_CANNOT_BE_DETERMINED)
 fprintf_filtered (stream, "[%d..%d] ",
     TYPE_ARRAY_LOWER_BOUND_VALUE (type),
     TYPE_ARRAY_UPPER_BOUND_VALUE (type)
   );
      fprintf_filtered (stream, "of ");
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
      error ("type not handled in pascal_type_print_varspec_prefix()");
      break;
    }
}
