
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_pidfile (char const*) ;
 int free (char*) ;
 char* generate_varrun_path (char const*) ;
 int * strchr (char const*,char) ;

int
pidfile(const char *path)
{

 if (path == ((void*)0) || strchr(path, '/') == ((void*)0)) {
  char *default_path;

  if ((default_path = generate_varrun_path(path)) == ((void*)0))
   return -1;

  if (create_pidfile(default_path) == -1) {
   free(default_path);
   return -1;
  }

  free(default_path);
  return 0;
 } else
  return create_pidfile(path);
}
