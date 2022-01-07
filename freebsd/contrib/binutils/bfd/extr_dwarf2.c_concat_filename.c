
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct line_info_table {unsigned int num_files; char** dirs; char* comp_dir; TYPE_1__* files; } ;
struct TYPE_2__ {char* name; int dir; } ;


 int IS_ABSOLUTE_PATH (char*) ;
 int _ (char*) ;
 int _bfd_error_handler (int ) ;
 char* bfd_malloc (size_t) ;
 int sprintf (char*,char*,char*,char*,...) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int stub1 (int ) ;

__attribute__((used)) static char *
concat_filename (struct line_info_table *table, unsigned int file)
{
  char *filename;

  if (file - 1 >= table->num_files)
    {

      if (file)
 (*_bfd_error_handler)
   (_("Dwarf Error: mangled line number section (bad file number)."));
      return strdup ("<unknown>");
    }

  filename = table->files[file - 1].name;

  if (!IS_ABSOLUTE_PATH (filename))
    {
      char *dirname = ((void*)0);
      char *subdirname = ((void*)0);
      char *name;
      size_t len;

      if (table->files[file - 1].dir)
 subdirname = table->dirs[table->files[file - 1].dir - 1];

      if (!subdirname || !IS_ABSOLUTE_PATH (subdirname))
 dirname = table->comp_dir;

      if (!dirname)
 {
   dirname = subdirname;
   subdirname = ((void*)0);
 }

      if (!dirname)
 return strdup (filename);

      len = strlen (dirname) + strlen (filename) + 2;

      if (subdirname)
 {
   len += strlen (subdirname) + 1;
   name = bfd_malloc (len);
   if (name)
     sprintf (name, "%s/%s/%s", dirname, subdirname, filename);
 }
      else
 {
   name = bfd_malloc (len);
   if (name)
     sprintf (name, "%s/%s", dirname, filename);
 }

      return name;
    }

  return strdup (filename);
}
