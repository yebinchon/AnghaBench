
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int pretty_printer ;
struct TYPE_4__ {unsigned int line; unsigned int column; char* file; } ;
typedef TYPE_1__ expanded_location ;
struct TYPE_5__ {char* (* decl_printable_name ) (scalar_t__,int) ;int name; } ;


 int * DECL_NAME (scalar_t__) ;
 char* DECL_SOURCE_FILE (scalar_t__) ;
 int DECL_SOURCE_LOCATION (scalar_t__) ;
 int DMGL_AUTO ;
 int DMGL_VERBOSE ;
 int IDENTIFIER_POINTER (int *) ;
 scalar_t__ NULL_TREE ;
 char* cplus_demangle (int ,int) ;
 scalar_t__ current_function_decl ;
 TYPE_1__ expand_location (int ) ;
 int gcc_assert (scalar_t__) ;
 TYPE_2__ lang_hooks ;
 scalar_t__ mf_build_string (char const*) ;
 char* pp_base_formatted_text (int *) ;
 int pp_clear_output_area (int *) ;
 int pp_construct (int *,int *,int ) ;
 int pp_decimal_int (int *,unsigned int) ;
 int pp_string (int *,char const*) ;
 scalar_t__ strcmp (char*,int ) ;
 char* stub1 (scalar_t__,int) ;
 char* stub2 (scalar_t__,int) ;

__attribute__((used)) static tree
mf_varname_tree (tree decl)
{
  static pretty_printer buf_rec;
  static int initialized = 0;
  pretty_printer *buf = & buf_rec;
  const char *buf_contents;
  tree result;

  gcc_assert (decl);

  if (!initialized)
    {
      pp_construct (buf, ((void*)0), 0);
      initialized = 1;
    }
  pp_clear_output_area (buf);


  {
    expanded_location xloc = expand_location (DECL_SOURCE_LOCATION (decl));
    const char *sourcefile;
    unsigned sourceline = xloc.line;
    unsigned sourcecolumn = 0;



    sourcefile = xloc.file;
    if (sourcefile == ((void*)0) && current_function_decl != NULL_TREE)
      sourcefile = DECL_SOURCE_FILE (current_function_decl);
    if (sourcefile == ((void*)0))
      sourcefile = "<unknown file>";

    pp_string (buf, sourcefile);

    if (sourceline != 0)
      {
        pp_string (buf, ":");
        pp_decimal_int (buf, sourceline);

        if (sourcecolumn != 0)
          {
            pp_string (buf, ":");
            pp_decimal_int (buf, sourcecolumn);
          }
      }
  }

  if (current_function_decl != NULL_TREE)
    {

      pp_string (buf, " (");
      {
        const char *funcname = ((void*)0);
        if (DECL_NAME (current_function_decl))
          funcname = lang_hooks.decl_printable_name (current_function_decl, 1);
        if (funcname == ((void*)0))
          funcname = "anonymous fn";

        pp_string (buf, funcname);
      }
      pp_string (buf, ") ");
    }
  else
    pp_string (buf, " ");


  {
    const char *declname = ((void*)0);

    if (DECL_NAME (decl) != ((void*)0))
      {
 if (strcmp ("GNU C++", lang_hooks.name) == 0)
   {


     declname = cplus_demangle (IDENTIFIER_POINTER (DECL_NAME (decl)),
           DMGL_AUTO | DMGL_VERBOSE);
   }
 if (declname == ((void*)0))
   declname = lang_hooks.decl_printable_name (decl, 3);
      }
    if (declname == ((void*)0))
      declname = "<unnamed variable>";

    pp_string (buf, declname);
  }


  buf_contents = pp_base_formatted_text (buf);
  result = mf_build_string (buf_contents);
  pp_clear_output_area (buf);

  return result;
}
