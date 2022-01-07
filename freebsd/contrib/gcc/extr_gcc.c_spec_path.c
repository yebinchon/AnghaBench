
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spec_path_info {scalar_t__ append_len; char* option; scalar_t__ separate_options; int append; scalar_t__ omit_relative; } ;


 int IS_ABSOLUTE_PATH (char*) ;
 scalar_t__ IS_DIR_SEPARATOR (char) ;
 int do_spec_1 (char*,int,int *) ;
 int is_directory (char*,int) ;
 int memcpy (char*,int ,scalar_t__) ;
 size_t strlen (char*) ;

__attribute__((used)) static void *
spec_path (char *path, void *data)
{
  struct spec_path_info *info = data;
  size_t len = 0;
  char save = 0;

  if (info->omit_relative && !IS_ABSOLUTE_PATH (path))
    return ((void*)0);

  if (info->append_len != 0)
    {
      len = strlen (path);
      memcpy (path + len, info->append, info->append_len + 1);
    }

  if (!is_directory (path, 1))
    return ((void*)0);

  do_spec_1 (info->option, 1, ((void*)0));
  if (info->separate_options)
    do_spec_1 (" ", 0, ((void*)0));

  if (info->append_len == 0)
    {
      len = strlen (path);
      save = path[len - 1];
      if (IS_DIR_SEPARATOR (path[len - 1]))
 path[len - 1] = '\0';
    }

  do_spec_1 (path, 1, ((void*)0));
  do_spec_1 (" ", 0, ((void*)0));


  if (info->append_len == 0)
    path[len - 1] = save;

  return ((void*)0);
}
