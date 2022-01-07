
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXEC_PATH_ENVIRONMENT ;
 char const* argv_exec_path ;
 int setenv (int ,char const*,int) ;

void perf_set_argv_exec_path(const char *exec_path)
{
 argv_exec_path = exec_path;



 setenv(EXEC_PATH_ENVIRONMENT, exec_path, 1);
}
