
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef int location_t ;
struct TYPE_4__ {char* file; scalar_t__ line; scalar_t__ column; } ;
typedef TYPE_1__ expanded_location ;
struct TYPE_5__ {char* (* decl_printable_name ) (scalar_t__,int) ;} ;


 char* DECL_SOURCE_FILE (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 char* concat (char const*,char const*,char const*,char const*,char const*,char const*,int *) ;
 scalar_t__ current_function_decl ;
 TYPE_1__ expand_location (int ) ;
 int free (char*) ;
 TYPE_2__ lang_hooks ;
 int mf_build_string (char*) ;
 int sprintf (char*,char*,int,...) ;
 char* stub1 (scalar_t__,int) ;

__attribute__((used)) static tree
mf_file_function_line_tree (location_t location)
{
  expanded_location xloc = expand_location (location);
  const char *file = ((void*)0), *colon, *line, *op, *name, *cp;
  char linecolbuf[30];
  char *string;
  tree result;


  file = xloc.file;
  if (file == ((void*)0) && current_function_decl != NULL_TREE)
    file = DECL_SOURCE_FILE (current_function_decl);
  if (file == ((void*)0))
    file = "<unknown file>";

  if (xloc.line > 0)
    {





        sprintf (linecolbuf, "%d", xloc.line);
      colon = ":";
      line = linecolbuf;
    }
  else
    colon = line = "";


  name = lang_hooks.decl_printable_name (current_function_decl, 1);
  if (name)
    {
      op = " (";
      cp = ")";
    }
  else
    op = name = cp = "";

  string = concat (file, colon, line, op, name, cp, ((void*)0));
  result = mf_build_string (string);
  free (string);

  return result;
}
