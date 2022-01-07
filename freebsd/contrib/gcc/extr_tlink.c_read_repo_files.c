
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file ;


 int file_exists (char const*) ;
 int * file_hash_lookup (char const*) ;
 int * file_stack ;
 char* frob_extension (char*,char*) ;
 int read_repo_file (int *) ;
 int recompile_files () ;
 int * symbol_stack ;

__attribute__((used)) static int
read_repo_files (char **object_lst)
{
  char **object = object_lst;

  for (; *object; object++)
    {
      const char *p;
      file *f;


      if (*object[0] == '-')
 continue;

      p = frob_extension (*object, ".rpo");

      if (! file_exists (p))
 continue;

      f = file_hash_lookup (p);

      read_repo_file (f);
    }

  if (file_stack != ((void*)0) && ! recompile_files ())
    return 0;

  return (symbol_stack != ((void*)0));
}
