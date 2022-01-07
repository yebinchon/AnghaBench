
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int version ;
typedef int FILE ;


 int PATH_MAX ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int sprintf (char*,char*,char const*) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;

__attribute__((used)) static char *get_kernel_version(const char *root_dir)
{
 char version[PATH_MAX];
 FILE *file;
 char *name, *tmp;
 const char *prefix = "Linux version ";

 sprintf(version, "%s/proc/version", root_dir);
 file = fopen(version, "r");
 if (!file)
  return ((void*)0);

 version[0] = '\0';
 tmp = fgets(version, sizeof(version), file);
 fclose(file);

 name = strstr(version, prefix);
 if (!name)
  return ((void*)0);
 name += strlen(prefix);
 tmp = strchr(name, ' ');
 if (tmp)
  *tmp = '\0';

 return strdup(name);
}
