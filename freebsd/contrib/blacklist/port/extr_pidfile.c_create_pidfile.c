
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ cleanup_old_pidfile (char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,int) ;
 int free (int *) ;
 int getpid () ;
 int * pidfile_path ;
 int pidfile_pid ;
 int register_atexit_handler () ;
 int * strdup (char const*) ;

__attribute__((used)) static int
create_pidfile(const char* path)
{
 FILE *f;

 if (register_atexit_handler() == -1)
  return -1;

 if (cleanup_old_pidfile(path) == 0)
  return 0;

 pidfile_path = strdup(path);
 if (pidfile_path == ((void*)0))
  return -1;

 if ((f = fopen(path, "w")) == ((void*)0)) {
  free(pidfile_path);
  pidfile_path = ((void*)0);
  return -1;
 }

 pidfile_pid = getpid();

 (void) fprintf(f, "%d\n", pidfile_pid);
 (void) fclose(f);

 return 0;
}
