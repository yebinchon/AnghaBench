
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_SEPARATOR ;
 int TRUE ;
 int ldfile_add_library_path (char*,int ) ;
 char* strchr (char*,int ) ;

__attribute__((used)) static void
set_default_dirlist (char *dirlist_ptr)
{
  char *p;

  while (1)
    {
      p = strchr (dirlist_ptr, PATH_SEPARATOR);
      if (p != ((void*)0))
 *p = '\0';
      if (*dirlist_ptr != '\0')
 ldfile_add_library_path (dirlist_ptr, TRUE);
      if (p == ((void*)0))
 break;
      dirlist_ptr = p + 1;
    }
}
