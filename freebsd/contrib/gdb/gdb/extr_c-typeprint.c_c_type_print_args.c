
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct field {int type; } ;
struct TYPE_2__ {scalar_t__ la_language; } ;


 struct field* TYPE_FIELDS (struct type*) ;
 int TYPE_NFIELDS (struct type*) ;
 scalar_t__ TYPE_VARARGS (struct type*) ;
 int c_print_type (int ,char*,struct ui_file*,int,int ) ;
 TYPE_1__* current_language ;
 int fprintf_filtered (struct ui_file*,char*) ;
 scalar_t__ language_cplus ;
 int wrap_here (char*) ;

__attribute__((used)) static void
c_type_print_args (struct type *type, struct ui_file *stream)
{
  int i;
  struct field *args;

  fprintf_filtered (stream, "(");
  args = TYPE_FIELDS (type);
  if (args != ((void*)0))
    {
      int i;




      for (i = 1; i < TYPE_NFIELDS (type); i++)
 {
   c_print_type (args[i].type, "", stream, -1, 0);
   if (i != TYPE_NFIELDS (type))
     {
       fprintf_filtered (stream, ",");
       wrap_here ("    ");
     }
 }
      if (TYPE_VARARGS (type))
 fprintf_filtered (stream, "...");
      else if (i == 1
        && (current_language->la_language == language_cplus))
 fprintf_filtered (stream, "void");
    }
  else if (current_language->la_language == language_cplus)
    {
      fprintf_filtered (stream, "void");
    }

  fprintf_filtered (stream, ")");
}
