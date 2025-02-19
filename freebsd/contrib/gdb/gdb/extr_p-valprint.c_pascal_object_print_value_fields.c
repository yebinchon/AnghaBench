
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct obstack {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef scalar_t__ CORE_ADDR ;


 int CHECK_TYPEDEF (struct type*) ;
 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_PTR ;
 int TYPE_FIELD_BITPOS (struct type*,int) ;
 scalar_t__ TYPE_FIELD_IGNORE (struct type*,int) ;
 int TYPE_FIELD_NAME (struct type*,int) ;
 scalar_t__ TYPE_FIELD_PACKED (struct type*,int) ;
 scalar_t__ TYPE_FIELD_STATIC (struct type*,int) ;
 int TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_NFIELDS (struct type*) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 int annotate_field_begin (int ) ;
 int annotate_field_end () ;
 int annotate_field_name_end () ;
 int annotate_field_value () ;
 int common_val_print (struct value*,struct ui_file*,int,int ,int,int) ;
 struct obstack dont_print_statmem_obstack ;
 int fprintf_filtered (struct ui_file*,char*) ;
 int fprintf_symbol_filtered (struct ui_file*,int ,int ,int) ;
 int fputs_filtered (char*,struct ui_file*) ;
 scalar_t__ inspect_it ;
 int language_cplus ;
 int n_spaces (int) ;
 int obstack_finish (struct obstack*) ;
 int obstack_free (struct obstack*,char*) ;
 char* obstack_next_free (struct obstack*) ;
 int pascal_object_print_static_field (struct value*,struct ui_file*,int,int,int) ;
 int pascal_object_print_value (struct type*,char*,scalar_t__,struct ui_file*,int,int,int,struct type**) ;
 int pascal_static_field_print ;
 int print_spaces_filtered (int,struct ui_file*) ;
 char* type_name_no_tag (struct type*) ;
 int unpack_field_as_long (struct type*,char*,int) ;
 int val_print (int ,char*,int,scalar_t__,struct ui_file*,int,int ,int,int) ;
 struct value* value_from_longest (int ,int ) ;
 int wrap_here (int ) ;

void
pascal_object_print_value_fields (struct type *type, char *valaddr,
      CORE_ADDR address, struct ui_file *stream,
      int format, int recurse,
      enum val_prettyprint pretty,
      struct type **dont_print_vb,
      int dont_print_statmem)
{
  int i, len, n_baseclasses;
  struct obstack tmp_obstack;
  char *last_dont_print = obstack_next_free (&dont_print_statmem_obstack);

  CHECK_TYPEDEF (type);

  fprintf_filtered (stream, "{");
  len = TYPE_NFIELDS (type);
  n_baseclasses = TYPE_N_BASECLASSES (type);



  if (n_baseclasses > 0)
    pascal_object_print_value (type, valaddr, address, stream,
          format, recurse + 1, pretty, dont_print_vb);

  if (!len && n_baseclasses == 1)
    fprintf_filtered (stream, "<No data fields>");
  else
    {
      int fields_seen = 0;

      if (dont_print_statmem == 0)
 {



   tmp_obstack = dont_print_statmem_obstack;
   obstack_finish (&dont_print_statmem_obstack);
 }

      for (i = n_baseclasses; i < len; i++)
 {

   if (!pascal_static_field_print && TYPE_FIELD_STATIC (type, i))
     continue;
   if (fields_seen)
     fprintf_filtered (stream, ", ");
   else if (n_baseclasses > 0)
     {
       if (pretty)
  {
    fprintf_filtered (stream, "\n");
    print_spaces_filtered (2 + 2 * recurse, stream);
    fputs_filtered ("members of ", stream);
    fputs_filtered (type_name_no_tag (type), stream);
    fputs_filtered (": ", stream);
  }
     }
   fields_seen = 1;

   if (pretty)
     {
       fprintf_filtered (stream, "\n");
       print_spaces_filtered (2 + 2 * recurse, stream);
     }
   else
     {
       wrap_here (n_spaces (2 + 2 * recurse));
     }
   if (inspect_it)
     {
       if (TYPE_CODE (TYPE_FIELD_TYPE (type, i)) == TYPE_CODE_PTR)
  fputs_filtered ("\"( ptr \"", stream);
       else
  fputs_filtered ("\"( nodef \"", stream);
       if (TYPE_FIELD_STATIC (type, i))
  fputs_filtered ("static ", stream);
       fprintf_symbol_filtered (stream, TYPE_FIELD_NAME (type, i),
           language_cplus,
           DMGL_PARAMS | DMGL_ANSI);
       fputs_filtered ("\" \"", stream);
       fprintf_symbol_filtered (stream, TYPE_FIELD_NAME (type, i),
           language_cplus,
           DMGL_PARAMS | DMGL_ANSI);
       fputs_filtered ("\") \"", stream);
     }
   else
     {
       annotate_field_begin (TYPE_FIELD_TYPE (type, i));

       if (TYPE_FIELD_STATIC (type, i))
  fputs_filtered ("static ", stream);
       fprintf_symbol_filtered (stream, TYPE_FIELD_NAME (type, i),
           language_cplus,
           DMGL_PARAMS | DMGL_ANSI);
       annotate_field_name_end ();
       fputs_filtered (" = ", stream);
       annotate_field_value ();
     }

   if (!TYPE_FIELD_STATIC (type, i) && TYPE_FIELD_PACKED (type, i))
     {
       struct value *v;



       if (TYPE_FIELD_IGNORE (type, i))
  {
    fputs_filtered ("<optimized out or zero length>", stream);
  }
       else
  {
    v = value_from_longest (TYPE_FIELD_TYPE (type, i),
       unpack_field_as_long (type, valaddr, i));

    common_val_print (v, stream, format, 0, recurse + 1, pretty);
  }
     }
   else
     {
       if (TYPE_FIELD_IGNORE (type, i))
  {
    fputs_filtered ("<optimized out or zero length>", stream);
  }
       else if (TYPE_FIELD_STATIC (type, i))
  {

    struct value *v;
    v = value_from_longest (TYPE_FIELD_TYPE (type, i),
       unpack_field_as_long (type, valaddr, i));

    if (v == ((void*)0))
      fputs_filtered ("<optimized out>", stream);
    else
      pascal_object_print_static_field (v, stream, format,
            recurse + 1, pretty);
  }
       else
  {




    val_print (TYPE_FIELD_TYPE (type, i),
        valaddr, TYPE_FIELD_BITPOS (type, i) / 8,
        address + TYPE_FIELD_BITPOS (type, i) / 8,
        stream, format, 0, recurse + 1, pretty);
  }
     }
   annotate_field_end ();
 }

      if (dont_print_statmem == 0)
 {


   obstack_free (&dont_print_statmem_obstack, last_dont_print);
   dont_print_statmem_obstack = tmp_obstack;
 }

      if (pretty)
 {
   fprintf_filtered (stream, "\n");
   print_spaces_filtered (2 * recurse, stream);
 }
    }
  fprintf_filtered (stream, "}");
}
