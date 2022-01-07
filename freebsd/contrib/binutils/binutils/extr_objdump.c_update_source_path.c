
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_file_list {int dummy; } ;


 char* concat (int ,char*,char const*,char const*) ;
 int free (char*) ;
 int include_path_count ;
 int * include_paths ;
 void* strrchr (char const*,char) ;
 struct print_file_list* try_print_file_open (char const*,char const*) ;

__attribute__((used)) static struct print_file_list *
update_source_path (const char *filename)
{
  struct print_file_list *p;
  const char *fname;
  int i;

  if (filename == ((void*)0))
    return ((void*)0);

  p = try_print_file_open (filename, filename);
  if (p != ((void*)0))
    return p;

  if (include_path_count == 0)
    return ((void*)0);


  fname = strrchr (filename, '/');
  if (fname == ((void*)0))
    fname = filename;
  else
    ++fname;



  for (i = 0; i < include_path_count; i++)
    {
      char *modname = concat (include_paths[i], "/", fname, (const char *) 0);

      p = try_print_file_open (filename, modname);
      if (p)
 return p;

      free (modname);
    }

  return ((void*)0);
}
