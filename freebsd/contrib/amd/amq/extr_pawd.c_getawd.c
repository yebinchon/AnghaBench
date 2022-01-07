
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 char* getcwd (char*,int ) ;
 char* getwd (char*) ;
 int transform_dir (char*) ;
 int xstrlcpy (char*,int ,size_t) ;

__attribute__((used)) static char *
getawd(char *path, size_t l)
{



  char *wd = getwd(path);


  if (wd == ((void*)0)) {
    return ((void*)0);
  }
  xstrlcpy(path, transform_dir(wd), l);
  return path;
}
