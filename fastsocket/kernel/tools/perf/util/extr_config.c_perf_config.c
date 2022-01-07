
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_uid; int st_size; } ;
typedef int config_fn_t ;


 int R_OK ;
 int access (char*,int ) ;
 char* config_exclusive_filename ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ geteuid () ;
 int mkpath (char*,char const*) ;
 int perf_config_from_file (int ,char*,void*) ;
 scalar_t__ perf_config_global () ;
 scalar_t__ perf_config_system () ;
 char* perf_etc_perfconfig () ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strdup (int ) ;
 int warning (char*,char const*) ;

int perf_config(config_fn_t fn, void *data)
{
 int ret = 0, found = 0;
 const char *home = ((void*)0);


 if (config_exclusive_filename)
  return perf_config_from_file(fn, config_exclusive_filename, data);
 if (perf_config_system() && !access(perf_etc_perfconfig(), R_OK)) {
  ret += perf_config_from_file(fn, perf_etc_perfconfig(),
         data);
  found += 1;
 }

 home = getenv("HOME");
 if (perf_config_global() && home) {
  char *user_config = strdup(mkpath("%s/.perfconfig", home));
  struct stat st;

  if (user_config == ((void*)0)) {
   warning("Not enough memory to process %s/.perfconfig, "
    "ignoring it.", home);
   goto out;
  }

  if (stat(user_config, &st) < 0)
   goto out_free;

  if (st.st_uid && (st.st_uid != geteuid())) {
   warning("File %s not owned by current user or root, "
    "ignoring it.", user_config);
   goto out_free;
  }

  if (!st.st_size)
   goto out_free;

  ret += perf_config_from_file(fn, user_config, data);
  found += 1;
out_free:
  free(user_config);
 }
out:
 if (found == 0)
  return -1;
 return ret;
}
