
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* symbol; } ;
typedef TYPE_1__ hash_table_entry ;


 scalar_t__ IS_SAME_PATH (int ,char const*) ;
 char* alloca (int) ;
 char const* cplus_suffix ;
 int errno ;
 int errors ;
 int notice (char*,int ,int ,int ,int ) ;
 int pname ;
 int rename (char const*,char* const) ;
 int shortpath (int *,char* const) ;
 int strcpy (char* const,char const*) ;
 int strlen (char const*) ;
 int syscalls_absolute_filename ;
 int xstrerror (int) ;

__attribute__((used)) static void
rename_c_file (const hash_table_entry *hp)
{
  const char *filename = hp->symbol;
  int last_char_index = strlen (filename) - 1;
  char *const new_filename = alloca (strlen (filename)
         + strlen (cplus_suffix) + 1);







  if (filename[last_char_index] != 'c' || filename[last_char_index-1] != '.'
      || IS_SAME_PATH (syscalls_absolute_filename, filename))
    return;

  strcpy (new_filename, filename);
  strcpy (&new_filename[last_char_index], cplus_suffix);

  if (rename (filename, new_filename) == -1)
    {
      int errno_val = errno;
      notice ("%s: warning: can't rename file '%s' to '%s': %s\n",
       pname, shortpath (((void*)0), filename),
       shortpath (((void*)0), new_filename), xstrerror (errno_val));
      errors++;
      return;
    }
}
