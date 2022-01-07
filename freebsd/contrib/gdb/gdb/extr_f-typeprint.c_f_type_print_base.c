
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 int BOUND_CANNOT_BE_DETERMINED ;
 int BOUND_FETCH_ERROR ;
 int CHECK_TYPEDEF (struct type*) ;
 int QUIT ;
 int TYPE_ARRAY_UPPER_BOUND_TYPE (struct type*) ;
 int TYPE_CODE (struct type*) ;
 int TYPE_LENGTH (struct type*) ;
 char* TYPE_NAME (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int error (char*,int) ;
 int f77_get_dynamic_upperbound (struct type*,int*) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int print_equivalent_f77_float_type (struct type*,struct ui_file*) ;
 int strcmp (char*,char*) ;
 int wrap_here (char*) ;

void
f_type_print_base (struct type *type, struct ui_file *stream, int show,
     int level)
{
  int retcode;
  int upper_bound;

  QUIT;

  wrap_here ("    ");
  if (type == ((void*)0))
    {
      fputs_filtered ("<type unknown>", stream);
      return;
    }




  if ((show <= 0) && (TYPE_NAME (type) != ((void*)0)))
    {
      if (TYPE_CODE (type) == 137)
 print_equivalent_f77_float_type (type, stream);
      else
 fputs_filtered (TYPE_NAME (type), stream);
      return;
    }

  if (TYPE_CODE (type) != 130)
    CHECK_TYPEDEF (type);

  switch (TYPE_CODE (type))
    {
    case 130:
      f_type_print_base (TYPE_TARGET_TYPE (type), stream, 0, level);
      break;

    case 141:
    case 136:
      f_type_print_base (TYPE_TARGET_TYPE (type), stream, show, level);
      break;

    case 134:
      fprintf_filtered (stream, "PTR TO -> ( ");
      f_type_print_base (TYPE_TARGET_TYPE (type), stream, 0, level);
      break;

    case 132:
      fprintf_filtered (stream, "REF TO -> ( ");
      f_type_print_base (TYPE_TARGET_TYPE (type), stream, 0, level);
      break;

    case 128:
      fprintf_filtered (stream, "VOID");
      break;

    case 129:
      fprintf_filtered (stream, "struct <unknown>");
      break;

    case 138:
      fprintf_filtered (stream, "<unknown type>");
      break;

    case 133:

      fprintf_filtered (stream, "<range type>");
      break;

    case 140:

      fprintf_filtered (stream, "character");
      break;

    case 135:




      if (strcmp (TYPE_NAME (type), "char") == 0)
 fprintf_filtered (stream, "character");
      else
 goto default_case;
      break;

    case 139:
      fprintf_filtered (stream, "complex*%d", TYPE_LENGTH (type));
      break;

    case 137:
      print_equivalent_f77_float_type (type, stream);
      break;

    case 131:


      if (TYPE_ARRAY_UPPER_BOUND_TYPE (type) == BOUND_CANNOT_BE_DETERMINED)
 fprintf_filtered (stream, "character*(*)");
      else
 {
   retcode = f77_get_dynamic_upperbound (type, &upper_bound);

   if (retcode == BOUND_FETCH_ERROR)
     fprintf_filtered (stream, "character*???");
   else
     fprintf_filtered (stream, "character*%d", upper_bound);
 }
      break;

    default_case:
    default:




      if (TYPE_NAME (type) != ((void*)0))
 fputs_filtered (TYPE_NAME (type), stream);
      else
 error ("Invalid type code (%d) in symbol table.", TYPE_CODE (type));
      break;
    }
}
