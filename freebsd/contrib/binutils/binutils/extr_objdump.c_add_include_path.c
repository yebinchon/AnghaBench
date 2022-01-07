
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* concat (char const*,char*,char const*) ;
 int include_path_count ;
 char const** include_paths ;
 char** xrealloc (char const**,int) ;

__attribute__((used)) static void
add_include_path (const char *path)
{
  if (path[0] == 0)
    return;
  include_path_count++;
  include_paths = xrealloc (include_paths,
       include_path_count * sizeof (*include_paths));




  include_paths[include_path_count - 1] = path;
}
