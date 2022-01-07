
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int pidfile_cleanup () ;
 int * pidfile_path ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static int
cleanup_old_pidfile(const char* path)
{
 if (pidfile_path != ((void*)0)) {
  if (strcmp(pidfile_path, path) != 0) {
   pidfile_cleanup();

   free(pidfile_path);
   pidfile_path = ((void*)0);

   return 1;
  } else
   return 0;
 } else
  return 1;
}
