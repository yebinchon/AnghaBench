
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 char* BINDIR ;
 int PATH_MAX ;
 int fprintf (int ,char*) ;
 int lstat (char*,struct stat*) ;
 char* perf_exec_path () ;
 int run_dir (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;

int test__attr(void)
{
 struct stat st;
 char path_perf[PATH_MAX];
 char path_dir[PATH_MAX];


 if (!lstat("./tests", &st))
  return run_dir("./tests", "./perf");


 snprintf(path_dir, PATH_MAX, "%s/tests", perf_exec_path());
 snprintf(path_perf, PATH_MAX, "%s/perf", BINDIR);

 if (!lstat(path_dir, &st) &&
     !lstat(path_perf, &st))
  return run_dir(path_dir, path_perf);

 fprintf(stderr, " (ommitted)");
 return 0;
}
