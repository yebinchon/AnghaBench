
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execvp (char*,char**) ;
 int free (char const**) ;
 char** prepare_perf_cmd (char const**) ;

int execv_perf_cmd(const char **argv) {
 const char **nargv = prepare_perf_cmd(argv);


 execvp("perf", (char **)nargv);

 free(nargv);
 return -1;
}
