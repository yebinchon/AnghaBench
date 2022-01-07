
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buildid_dir_config {char* dir; } ;


 int MAXPATHLEN ;
 char* perf_config_dirname (char const*,char const*) ;
 int prefixcmp (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int buildid_dir_command_config(const char *var, const char *value,
          void *data)
{
 struct buildid_dir_config *c = data;
 const char *v;


 if (!prefixcmp(var, "buildid.") && !strcmp(var + 8, "dir")) {
  v = perf_config_dirname(var, value);
  if (!v)
   return -1;
  strncpy(c->dir, v, MAXPATHLEN-1);
  c->dir[MAXPATHLEN-1] = '\0';
 }
 return 0;
}
