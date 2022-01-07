
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* outf_p ;
struct TYPE_6__ {char const* name; struct TYPE_6__* next; } ;


 int ISALNUM (char) ;
 scalar_t__ IS_DIR_SEPARATOR (char const) ;
 size_t NUM_BASE_FILES ;
 TYPE_1__** base_files ;
 TYPE_1__* create_file (char const*,char const*) ;
 char* get_file_basename (char const*) ;
 char** lang_dir_names ;
 scalar_t__ memcmp (char const*,char*,size_t) ;
 int memcpy (char*,char*,int) ;
 TYPE_1__* output_files ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* xasprintf (char*,char const*) ;

outf_p
get_output_file_with_visibility (const char *input_file)
{
  outf_p r;
  size_t len;
  const char *basename;
  const char *for_name;
  const char *output_name;




  if (input_file == ((void*)0))
    input_file = "system.h";


  basename = get_file_basename (input_file);

  len = strlen (basename);
  if ((len > 2 && memcmp (basename+len-2, ".c", 2) == 0)
      || (len > 2 && memcmp (basename+len-2, ".y", 2) == 0)
      || (len > 3 && memcmp (basename+len-3, ".in", 3) == 0))
    {
      char *s;

      output_name = s = xasprintf ("gt-%s", basename);
      for (; *s != '.'; s++)
 if (! ISALNUM (*s) && *s != '-')
   *s = '-';
      memcpy (s, ".h", sizeof (".h"));
      for_name = basename;
    }





  else if (strcmp (basename, "c-common.h") == 0)
    output_name = "gt-c-common.h", for_name = "c-common.c";
  else if (strcmp (basename, "c-tree.h") == 0)
    output_name = "gt-c-decl.h", for_name = "c-decl.c";
  else if (strncmp (basename, "cp", 2) == 0 && IS_DIR_SEPARATOR (basename[2])
    && strcmp (basename + 3, "cp-tree.h") == 0)
    output_name = "gt-cp-tree.h", for_name = "cp/tree.c";
  else if (strncmp (basename, "cp", 2) == 0 && IS_DIR_SEPARATOR (basename[2])
    && strcmp (basename + 3, "decl.h") == 0)
    output_name = "gt-cp-decl.h", for_name = "cp/decl.c";
  else if (strncmp (basename, "cp", 2) == 0 && IS_DIR_SEPARATOR (basename[2])
    && strcmp (basename + 3, "name-lookup.h") == 0)
    output_name = "gt-cp-name-lookup.h", for_name = "cp/name-lookup.c";
  else if (strncmp (basename, "objc", 4) == 0 && IS_DIR_SEPARATOR (basename[4])
    && strcmp (basename + 5, "objc-act.h") == 0)
    output_name = "gt-objc-objc-act.h", for_name = "objc/objc-act.c";
  else
    {
      size_t i;

      for (i = 0; i < NUM_BASE_FILES; i++)
 if (memcmp (basename, lang_dir_names[i], strlen (lang_dir_names[i])) == 0
     && basename[strlen(lang_dir_names[i])] == '/')
   return base_files[i];

      output_name = "gtype-desc.c";
      for_name = ((void*)0);
    }


  for (r = output_files; r; r = r->next)
    if (strcmp (r->name, output_name) == 0)
      return r;


  r = create_file (for_name, output_name);

  return r;
}
