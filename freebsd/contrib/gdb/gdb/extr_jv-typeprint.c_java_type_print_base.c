
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct fn_field {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 int DMGL_ANSI ;
 int DMGL_JAVA ;
 int DMGL_PARAMS ;
 int HAVE_CPLUS_STRUCT (struct type*) ;
 int QUIT ;
 int TYPE_CODE (struct type*) ;


 int * TYPE_FIELD_NAME (struct type*,int) ;
 int TYPE_FIELD_PRIVATE (struct type*,int) ;
 int TYPE_FIELD_PROTECTED (struct type*,int) ;
 int TYPE_FIELD_STATIC (struct type*,int) ;
 int TYPE_FIELD_TYPE (struct type*,int) ;
 struct fn_field* TYPE_FN_FIELDLIST1 (struct type*,int) ;
 int TYPE_FN_FIELDLIST_LENGTH (struct type*,int) ;
 char* TYPE_FN_FIELDLIST_NAME (struct type*,int) ;
 int TYPE_FN_FIELD_ABSTRACT (struct fn_field*,int) ;
 int TYPE_FN_FIELD_FINAL (struct fn_field*,int) ;
 int TYPE_FN_FIELD_NATIVE (struct fn_field*,int) ;
 char* TYPE_FN_FIELD_PHYSNAME (struct fn_field*,int) ;
 int TYPE_FN_FIELD_PRIVATE (struct fn_field*,int) ;
 int TYPE_FN_FIELD_PROTECTED (struct fn_field*,int) ;
 int TYPE_FN_FIELD_PUBLIC (struct fn_field*,int) ;
 int TYPE_FN_FIELD_STATIC (struct fn_field*,int) ;
 int TYPE_FN_FIELD_STUB (struct fn_field*,int) ;
 int TYPE_FN_FIELD_SYNCHRONIZED (struct fn_field*,int) ;
 struct type* TYPE_FN_FIELD_TYPE (struct fn_field*,int) ;
 char* TYPE_NAME (struct type*) ;
 int TYPE_NFIELDS (struct type*) ;
 int TYPE_NFN_FIELDS (struct type*) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 int TYPE_STUB (struct type*) ;
 char* TYPE_TAG_NAME (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int c_type_print_base (struct type*,struct ui_file*,int,int) ;
 char* cplus_demangle (char*,int) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fprintfi_filtered (int,struct ui_file*,char*) ;
 int fputs_filtered (char*,struct ui_file*) ;
 char* gdb_mangle_name (struct type*,int,int) ;
 int is_constructor_name (char*) ;
 int is_cplus_marker (int ) ;
 int is_destructor_name (char*) ;
 char* java_demangle_type_signature (char*) ;
 int java_print_type (int ,int *,struct ui_file*,int,int) ;
 int java_type_print_derivation_info (struct ui_file*,struct type*) ;
 int print_spaces_filtered (int,struct ui_file*) ;
 int strcmp (char*,char*) ;
 int strncmp (int *,char*,int) ;
 char* type_name_no_tag (struct type*) ;
 int type_print (struct type*,char*,struct ui_file*,int) ;
 int wrap_here (char*) ;
 int xfree (char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
java_type_print_base (struct type *type, struct ui_file *stream, int show,
        int level)
{
  int i;
  int len;
  char *mangled_name;
  char *demangled_name;
  QUIT;

  wrap_here ("    ");

  if (type == ((void*)0))
    {
      fputs_filtered ("<type unknown>", stream);
      return;
    }




  if (show <= 0
      && TYPE_NAME (type) != ((void*)0))
    {
      fputs_filtered (TYPE_NAME (type), stream);
      return;
    }

  CHECK_TYPEDEF (type);

  switch (TYPE_CODE (type))
    {
    case 129:
      java_type_print_base (TYPE_TARGET_TYPE (type), stream, show, level);
      break;

    case 128:
      if (TYPE_TAG_NAME (type) != ((void*)0) && TYPE_TAG_NAME (type)[0] == '[')
 {
   char *name = java_demangle_type_signature (TYPE_TAG_NAME (type));
   fputs_filtered (name, stream);
   xfree (name);
   break;
 }

      if (show >= 0)
 fprintf_filtered (stream, "class ");

      if (TYPE_TAG_NAME (type) != ((void*)0))
 {
   fputs_filtered (TYPE_TAG_NAME (type), stream);
   if (show > 0)
     fputs_filtered (" ", stream);
 }

      wrap_here ("    ");

      if (show < 0)
 {

   if (TYPE_TAG_NAME (type) == ((void*)0))
     fprintf_filtered (stream, "{...}");
 }
      else if (show > 0 || TYPE_TAG_NAME (type) == ((void*)0))
 {
   java_type_print_derivation_info (stream, type);

   fprintf_filtered (stream, "{\n");
   if ((TYPE_NFIELDS (type) == 0) && (TYPE_NFN_FIELDS (type) == 0))
     {
       if (TYPE_STUB (type))
  fprintfi_filtered (level + 4, stream, "<incomplete type>\n");
       else
  fprintfi_filtered (level + 4, stream, "<no data fields>\n");
     }




   len = TYPE_NFIELDS (type);
   for (i = TYPE_N_BASECLASSES (type); i < len; i++)
     {
       QUIT;

       if (strncmp (TYPE_FIELD_NAME (type, i), "_vptr", 5) == 0
    && is_cplus_marker ((TYPE_FIELD_NAME (type, i))[5]))
  continue;


       if (strncmp (TYPE_FIELD_NAME (type, i), "class", 5) == 0)
  continue;

       print_spaces_filtered (level + 4, stream);

       if (HAVE_CPLUS_STRUCT (type))
  {
    if (TYPE_FIELD_PROTECTED (type, i))
      fprintf_filtered (stream, "protected ");
    else if (TYPE_FIELD_PRIVATE (type, i))
      fprintf_filtered (stream, "private ");
    else
      fprintf_filtered (stream, "public ");
  }

       if (TYPE_FIELD_STATIC (type, i))
  fprintf_filtered (stream, "static ");

       java_print_type (TYPE_FIELD_TYPE (type, i),
          TYPE_FIELD_NAME (type, i),
          stream, show - 1, level + 4);

       fprintf_filtered (stream, ";\n");
     }


   len = TYPE_NFN_FIELDS (type);
   if (len)
     fprintf_filtered (stream, "\n");



   for (i = 0; i < len; i++)
     {
       struct fn_field *f;
       int j;
       char *method_name;
       char *name;
       int is_constructor;
       int n_overloads;

       f = TYPE_FN_FIELDLIST1 (type, i);
       n_overloads = TYPE_FN_FIELDLIST_LENGTH (type, i);
       method_name = TYPE_FN_FIELDLIST_NAME (type, i);
       name = type_name_no_tag (type);
       is_constructor = name && strcmp (method_name, name) == 0;

       for (j = 0; j < n_overloads; j++)
  {
    char *physname;
    int is_full_physname_constructor;

    physname = TYPE_FN_FIELD_PHYSNAME (f, j);

    is_full_physname_constructor
                    = (is_constructor_name (physname)
                       || is_destructor_name (physname));

    QUIT;

    print_spaces_filtered (level + 4, stream);

    if (TYPE_FN_FIELD_PROTECTED (f, j))
      fprintf_filtered (stream, "protected ");
    else if (TYPE_FN_FIELD_PRIVATE (f, j))
      fprintf_filtered (stream, "private ");
    else if (TYPE_FN_FIELD_PUBLIC (f, j))
      fprintf_filtered (stream, "public ");

    if (TYPE_FN_FIELD_ABSTRACT (f, j))
      fprintf_filtered (stream, "abstract ");
    if (TYPE_FN_FIELD_STATIC (f, j))
      fprintf_filtered (stream, "static ");
    if (TYPE_FN_FIELD_FINAL (f, j))
      fprintf_filtered (stream, "final ");
    if (TYPE_FN_FIELD_SYNCHRONIZED (f, j))
      fprintf_filtered (stream, "synchronized ");
    if (TYPE_FN_FIELD_NATIVE (f, j))
      fprintf_filtered (stream, "native ");

    if (TYPE_TARGET_TYPE (TYPE_FN_FIELD_TYPE (f, j)) == 0)
      {

        fprintf_filtered (stream, "<undefined type> %s;\n",
     TYPE_FN_FIELD_PHYSNAME (f, j));
        break;
      }
    else if (!is_constructor && !is_full_physname_constructor)
      {
        type_print (TYPE_TARGET_TYPE (TYPE_FN_FIELD_TYPE (f, j)),
      "", stream, -1);
        fputs_filtered (" ", stream);
      }

    if (TYPE_FN_FIELD_STUB (f, j))

      mangled_name = gdb_mangle_name (type, i, j);
    else
      mangled_name = TYPE_FN_FIELD_PHYSNAME (f, j);

    demangled_name =
      cplus_demangle (mangled_name,
        DMGL_ANSI | DMGL_PARAMS | DMGL_JAVA);

    if (demangled_name == ((void*)0))
      demangled_name = xstrdup (mangled_name);

    {
      char *demangled_no_class;
      char *ptr;

      ptr = demangled_no_class = demangled_name;

      while (1)
        {
   char c;

   c = *ptr++;

   if (c == 0 || c == '(')
     break;
   if (c == '.')
     demangled_no_class = ptr;
        }

      fputs_filtered (demangled_no_class, stream);
      xfree (demangled_name);
    }

    if (TYPE_FN_FIELD_STUB (f, j))
      xfree (mangled_name);

    fprintf_filtered (stream, ";\n");
  }
     }

   fprintfi_filtered (level, stream, "}");
 }
      break;

    default:
      c_type_print_base (type, stream, show, level);
    }
}
