
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;


 int PATH_MAX ;
 int S_ISDIR (int ) ;
 int sprintf (char*,char*,char const*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static int is_directory(const char *base_path, const struct dirent *dent)
{
 char path[PATH_MAX];
 struct stat st;

 sprintf(path, "%s/%s", base_path, dent->d_name);
 if (stat(path, &st))
  return 0;

 return S_ISDIR(st.st_mode);
}
