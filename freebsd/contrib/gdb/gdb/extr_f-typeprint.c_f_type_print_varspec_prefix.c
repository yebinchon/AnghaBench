
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
 int fprintf_filtered (struct ui_file*,char*) ;

void
f_type_print_varspec_prefix (struct type *type, struct ui_file *stream,
        int show, int passed_a_ptr)
{
  if (type == 0)
    return;

  if (TYPE_NAME (type) && show <= 0)
    return;

  QUIT;

  switch (TYPE_CODE (type))
    {
    case 137:
      f_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, 0, 1);
      break;

    case 141:
      f_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, 0, 0);
      if (passed_a_ptr)
 fprintf_filtered (stream, "(");
      break;

    case 149:
      f_type_print_varspec_prefix (TYPE_TARGET_TYPE (type), stream, 0, 0);
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
    case 135:
    case 145:
    case 131:


      break;
    }
}
