
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;


 int CHECK_TYPEDEF (struct type*) ;
 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_FUNC ;
 int TYPE_CODE_METHOD ;
 int fputs_filtered (char*,struct ui_file*) ;
 int pascal_type_print_base (struct type*,struct ui_file*,int,int) ;
 int pascal_type_print_varspec_prefix (struct type*,struct ui_file*,int,int ) ;
 int pascal_type_print_varspec_suffix (struct type*,struct ui_file*,int,int ,int) ;
 int * strchr (char*,char) ;

void
pascal_print_type (struct type *type, char *varstring, struct ui_file *stream,
     int show, int level)
{
  enum type_code code;
  int demangled_args;

  code = TYPE_CODE (type);

  if (show > 0)
    CHECK_TYPEDEF (type);

  if ((code == TYPE_CODE_FUNC ||
       code == TYPE_CODE_METHOD))
    {
      pascal_type_print_varspec_prefix (type, stream, show, 0);
    }

  fputs_filtered (varstring, stream);

  if ((varstring != ((void*)0) && *varstring != '\0') &&
      !(code == TYPE_CODE_FUNC ||
 code == TYPE_CODE_METHOD))
    {
      fputs_filtered (" : ", stream);
    }

  if (!(code == TYPE_CODE_FUNC ||
 code == TYPE_CODE_METHOD))
    {
      pascal_type_print_varspec_prefix (type, stream, show, 0);
    }

  pascal_type_print_base (type, stream, show, level);



  demangled_args = varstring ? strchr (varstring, '(') != ((void*)0) : 0;
  pascal_type_print_varspec_suffix (type, stream, show, 0, demangled_args);

}
