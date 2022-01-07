
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_DIR_SEPARATOR (char const) ;
 int free (char**) ;
 int free_split_directories (char**) ;
 scalar_t__ malloc (int) ;
 char* save_string (char const*,int) ;

__attribute__((used)) static char **
split_directories (const char *name, int *ptr_num_dirs)
{
  int num_dirs = 0;
  char **dirs;
  const char *p, *q;
  int ch;



  p = name;
  while ((ch = *p++) != '\0')
    {
      if (IS_DIR_SEPARATOR (ch))
 {
   num_dirs++;
   while (IS_DIR_SEPARATOR (*p))
     p++;
 }
    }

  dirs = (char **) malloc (sizeof (char *) * (num_dirs + 2));
  if (dirs == ((void*)0))
    return ((void*)0);


  num_dirs = 0;
  p = name;
  q = p;
  while ((ch = *p++) != '\0')
    {
      if (IS_DIR_SEPARATOR (ch))
 {
   while (IS_DIR_SEPARATOR (*p))
     p++;

   dirs[num_dirs++] = save_string (q, p - q);
   if (dirs[num_dirs - 1] == ((void*)0))
     {
       dirs[num_dirs] = ((void*)0);
       free_split_directories (dirs);
       return ((void*)0);
     }
   q = p;
 }
    }

  if (p - 1 - q > 0)
    dirs[num_dirs++] = save_string (q, p - 1 - q);
  dirs[num_dirs] = ((void*)0);

  if (dirs[num_dirs - 1] == ((void*)0))
    {
      free_split_directories (dirs);
      return ((void*)0);
    }

  if (ptr_num_dirs)
    *ptr_num_dirs = num_dirs;
  return dirs;
}
