
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 int QUIT ;
 int TYPE_CODE (struct type*) ;
 int TYPE_DOMAIN_TYPE (struct type*) ;
 scalar_t__ TYPE_NAME (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int c_type_print_base (int ,struct ui_file*,int ,int) ;
 int c_type_print_modifier (struct type*,struct ui_file*,int,int) ;
 int error (char*) ;
 int fprintf_filtered (struct ui_file*,char*) ;
 int fputs_filtered (char*,struct ui_file*) ;
 char* type_name_no_tag (int ) ;

void
c_type_print_varspec_prefix (struct type *type, struct ui_file *stream,
        int show, int passed_a_ptr, int need_post_space)
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
      c_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, show, 1, 1);
      fprintf_filtered (stream, "*");
      c_type_print_modifier (type, stream, 1, need_post_space);
      break;

    case 141:
      if (passed_a_ptr)
 fprintf_filtered (stream, "(");
      c_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, show, 0, 0);
      fprintf_filtered (stream, " ");
      name = type_name_no_tag (TYPE_DOMAIN_TYPE (type));
      if (name)
 fputs_filtered (name, stream);
      else
 c_type_print_base (TYPE_DOMAIN_TYPE (type), stream, 0, passed_a_ptr);
      fprintf_filtered (stream, "::");
      break;

    case 140:
      if (passed_a_ptr)
 fprintf_filtered (stream, "(");
      c_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, show, 0, 0);
      if (passed_a_ptr)
 {
   fprintf_filtered (stream, " ");
   c_type_print_base (TYPE_DOMAIN_TYPE (type), stream, 0, passed_a_ptr);
   fprintf_filtered (stream, "::");
 }
      break;

    case 136:
      c_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, show, 1, 0);
      fprintf_filtered (stream, "&");
      c_type_print_modifier (type, stream, 1, need_post_space);
      break;

    case 143:
      c_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, show, 0, 0);
      if (passed_a_ptr)
 fprintf_filtered (stream, "(");
      break;

    case 151:
      c_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, show, 0, 0);
      if (passed_a_ptr)
 fprintf_filtered (stream, "(");
      break;

    case 131:
      c_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, show, 0, 0);
      break;

    case 130:
    case 133:
    case 129:
    case 146:
    case 142:
    case 144:
    case 128:
    case 145:
    case 148:
    case 149:
    case 135:
    case 137:
    case 134:
    case 150:
    case 147:
    case 132:
    case 139:


      break;
    default:
      error ("type not handled in c_type_print_varspec_prefix()");
      break;
    }
}
