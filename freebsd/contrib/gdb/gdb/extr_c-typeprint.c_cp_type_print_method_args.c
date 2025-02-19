
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct field {int type; } ;
struct TYPE_2__ {scalar_t__ la_language; } ;


 int DMGL_ANSI ;
 struct field* TYPE_FIELDS (struct type*) ;
 int TYPE_NFIELDS (struct type*) ;
 int TYPE_VARARGS (struct type*) ;
 TYPE_1__* current_language ;
 int fprintf_filtered (struct ui_file*,char*) ;
 int fprintf_symbol_filtered (struct ui_file*,char*,scalar_t__,int ) ;
 int fputs_filtered (char*,struct ui_file*) ;
 scalar_t__ language_cplus ;
 int type_print (int ,char*,struct ui_file*,int ) ;

__attribute__((used)) static void
cp_type_print_method_args (struct type *mtype, char *prefix, char *varstring,
      int staticp, struct ui_file *stream)
{
  struct field *args = TYPE_FIELDS (mtype);
  int nargs = TYPE_NFIELDS (mtype);
  int varargs = TYPE_VARARGS (mtype);
  int i;

  fprintf_symbol_filtered (stream, prefix, language_cplus, DMGL_ANSI);
  fprintf_symbol_filtered (stream, varstring, language_cplus, DMGL_ANSI);
  fputs_filtered ("(", stream);


  i = staticp ? 0 : 1;
  if (nargs > i)
    {
      while (i < nargs)
 {
   type_print (args[i++].type, "", stream, 0);

   if (i == nargs && varargs)
     fprintf_filtered (stream, ", ...");
   else if (i < nargs)
     fprintf_filtered (stream, ", ");
 }
    }
  else if (varargs)
    fprintf_filtered (stream, "...");
  else if (current_language->la_language == language_cplus)
    fprintf_filtered (stream, "void");

  fprintf_filtered (stream, ")");
}
