
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXEC_PATH_ENVIRONMENT ;
 int PERF_EXEC_PATH ;
 char const* argv_exec_path ;
 char* getenv (int ) ;
 char const* system_path (int ) ;

const char *perf_exec_path(void)
{
 const char *env;

 if (argv_exec_path)
  return argv_exec_path;

 env = getenv(EXEC_PATH_ENVIRONMENT);
 if (env && *env) {
  return env;
 }

 return system_path(PERF_EXEC_PATH);
}
