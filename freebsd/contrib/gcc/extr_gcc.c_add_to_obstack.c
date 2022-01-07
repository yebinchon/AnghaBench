
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct add_to_obstack_info {int first_time; int ob; scalar_t__ check_dir; } ;


 int PATH_SEPARATOR ;
 int is_directory (char*,int) ;
 int obstack_1grow (int ,int ) ;
 int obstack_grow (int ,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void *
add_to_obstack (char *path, void *data)
{
  struct add_to_obstack_info *info = data;

  if (info->check_dir && !is_directory (path, 0))
    return ((void*)0);

  if (!info->first_time)
    obstack_1grow (info->ob, PATH_SEPARATOR);

  obstack_grow (info->ob, path, strlen (path));

  info->first_time = 0;
  return ((void*)0);
}
