
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct TYPE_2__ {int la_language; } ;


 int BOUND_CANNOT_BE_DETERMINED ;
 int QUIT ;
 int TYPE_ARRAY_UPPER_BOUND_TYPE (struct type*) ;
 int TYPE_CODE (struct type*) ;
 int TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_LENGTH (struct type*) ;
 scalar_t__ TYPE_NAME (struct type*) ;
 int TYPE_NFIELDS (struct type*) ;
 int TYPE_PROTOTYPED (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int c_print_type (int ,char*,struct ui_file*,int,int ) ;
 int c_type_print_args (struct type*,struct ui_file*) ;
 TYPE_1__* current_language ;
 int error (char*) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int language_cplus ;
 int wrap_here (char*) ;

void
c_type_print_varspec_suffix (struct type *type, struct ui_file *stream,
        int show, int passed_a_ptr, int demangled_args)
{
  if (type == 0)
    return;

  if (TYPE_NAME (type) && show <= 0)
    return;

  QUIT;

  switch (TYPE_CODE (type))
    {
    case 151:
      if (passed_a_ptr)
 fprintf_filtered (stream, ")");

      fprintf_filtered (stream, "[");
      if (TYPE_LENGTH (type) >= 0 && TYPE_LENGTH (TYPE_TARGET_TYPE (type)) > 0
 && TYPE_ARRAY_UPPER_BOUND_TYPE (type) != BOUND_CANNOT_BE_DETERMINED)
 fprintf_filtered (stream, "%d",
     (TYPE_LENGTH (type)
      / TYPE_LENGTH (TYPE_TARGET_TYPE (type))));
      fprintf_filtered (stream, "]");

      c_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, show,
       0, 0);
      break;

    case 141:
      if (passed_a_ptr)
 fprintf_filtered (stream, ")");
      c_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, show,
       0, 0);
      break;

    case 140:
      if (passed_a_ptr)
 fprintf_filtered (stream, ")");
      c_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, show,
       0, 0);
      if (passed_a_ptr)
 {
   c_type_print_args (type, stream);
 }
      break;

    case 138:
    case 136:
      c_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, show,
       1, 0);
      break;

    case 143:
      if (passed_a_ptr)
 fprintf_filtered (stream, ")");
      if (!demangled_args)
 {
   int i, len = TYPE_NFIELDS (type);
   fprintf_filtered (stream, "(");
   if (len == 0
              && (TYPE_PROTOTYPED (type)
                  || current_language->la_language == language_cplus))
     {
       fprintf_filtered (stream, "void");
     }
   else
     for (i = 0; i < len; i++)
       {
  if (i > 0)
    {
      fputs_filtered (", ", stream);
      wrap_here ("    ");
    }
  c_print_type (TYPE_FIELD_TYPE (type, i), "", stream, -1, 0);
       }
   fprintf_filtered (stream, ")");
 }
      c_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, show,
       passed_a_ptr, 0);
      break;

    case 131:
      c_type_print_varspec_suffix (TYPE_TARGET_TYPE (type), stream, show,
       passed_a_ptr, 0);
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
      error ("type not handled in c_type_print_varspec_suffix()");
      break;
    }
}
